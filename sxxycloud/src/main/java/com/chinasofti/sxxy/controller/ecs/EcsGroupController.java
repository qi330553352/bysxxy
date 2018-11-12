package com.chinasofti.sxxy.controller.ecs;

import com.chinasofti.sxxy.entity.CloudECSInfo;
import com.chinasofti.sxxy.entity.CloudEcsEcsGroupRelationship;
import com.chinasofti.sxxy.service.CloudECSInfoService;
import com.chinasofti.sxxy.service.CloudEcsEcsGroupRelationshipService;
import com.chinasofti.sxxy.service.EcsGroupInfoService;
import com.chinasofti.sxxy.util.*;
import com.huawei.openstack4j.api.OSClient;
import com.huawei.openstack4j.model.common.Identifier;
import com.huawei.openstack4j.model.compute.Server;
import com.huawei.openstack4j.model.compute.StopType;
import com.huawei.openstack4j.openstack.OSFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * 创 建  时 间： 2018/8/4 20:38
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/ecsGroup")
public class EcsGroupController {

    @Autowired
    private CloudECSInfoService cloudECSInfoService;
    @Autowired
    private EcsGroupInfoService ecsGroupInfoService;
    @Autowired
    private CloudEcsEcsGroupRelationshipService relationshipService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(){

        return new ModelAndView("ecs/ecsGroup/list");
    }

    @ResponseBody
    @RequestMapping(value = "/listData", method = RequestMethod.POST)
    public Map<String,Object> indexData(String name, String addr, String status, Integer rows, Integer page, HttpServletRequest request){
        Integer offset = (page-1)*rows;
        QueryResult result = ecsGroupInfoService.findIndexData(offset,rows);
        PageBean pageBean = new PageBean(page,rows,result.getNumber(),result.getData());
        ReturnDataMap map = new ReturnDataMap(true,"数据返回成功");
        map.put("page",pageBean.getCurrentPage());
        map.put("total",pageBean.getPageCount());
        map.put("rows",pageBean.getRecordList());
        map.put("records",pageBean.getRecordCount());
        return map;
    }

    @ResponseBody
    @RequestMapping(value = "/listDataChild", method = RequestMethod.POST)
    public Map<String,Object> listDataChild(Long id,String nd_){
        List<? extends Server> serverList = findHuawei();
        if(serverList.size()<=0) return new ReturnDataMap(true,"操作成功");
        List<CloudECSInfo> list = new ArrayList<>();Date date = new Date();
        for (Server server : serverList) {
            CloudECSInfo bean = new CloudECSInfo();
            bean.setId(server.getId());
            bean.setStatus(server.getStatus().value());
            bean.setUpdateTime(date);
            list.add(bean);
        }
        cloudECSInfoService.batchUpdates(list);
        List<Map<String,Object>> rows = relationshipService.findlistDataChild(id);
        ReturnDataMap map = new ReturnDataMap(true,"数据返回成功");
        map.put("rows",rows);
        return map;
    }

    @ResponseBody //查询所有的云主机组
    @RequestMapping(value = "/groups", method = RequestMethod.POST)
    public List<Map<String,Object>> groups(){

        return ecsGroupInfoService.findGroupsInfo();
    }

    @ResponseBody //删除信息
    @RequestMapping(value = "/deleteById")
    public Map<String,Object> deleteById(Long groupId){
        ecsGroupInfoService.deleteById(groupId);
        return new ReturnDataMap(true,"删除成功");
    }

    @ResponseBody //云主机组添加云主机
    @RequestMapping(value = "/groupaddEcs", method = RequestMethod.POST)
    public Map<String,Object> groupaddEcs(Long groupId,String[] ecsIds){
        List<CloudEcsEcsGroupRelationship> list = new ArrayList<>();
        for(String ecs : ecsIds){
            CloudEcsEcsGroupRelationship bean = new CloudEcsEcsGroupRelationship();
            bean.setCloudecsId(ecs);
            bean.setEcsGroupId(groupId);
            list.add(bean);
        }
        boolean tag = false;
        List<String> existence = relationshipService.findEcsIdByEcsGroupId(groupId);
        outterLoop:for(String ecs : existence){
            for(String eid : ecsIds){
                if(ecs.equals(eid)){
                    tag = true;
                    break outterLoop;
                }
            }
        }
        if(tag){
            return new ReturnDataMap(false,"该云主机组中已包含选中云组主，请重新选择");
        }else{
            relationshipService.batchInserts(list);
            return new ReturnDataMap(true,"添加成功");
        }
    }

    @ResponseBody //云主机组添加云主机
    @RequestMapping(value = "/editStatus")
    public Map<String,Object> editStatus(Long groupId,String status){
        OSClient.OSClientV3 os = OSFactory.builderV3()
                .endpoint(ConfigCommons.ecs)
                .credentials(ConfigCommons.user, ConfigCommons.password, Identifier.byId(ConfigCommons.userDomainId))
                .scopeToProject(Identifier.byId(ConfigCommons.projectId)).authenticate();
        List<String> serverIds = relationshipService.findEcsIdByEcsGroupId(groupId);
        if(serverIds.isEmpty()) return new ReturnDataMap(false,"当前没有要操作的云主机");
        if(StatusEnum.ACTIVE.getCode().equals(status)){
            os.ecs().servers().start(serverIds);
            ecsGroupInfoService.updateStatusById(StatusEnum.ACTIVE.getCode(),groupId);
        }else if(StatusEnum.SHUTOFF.getCode().equals(status)){
            os.ecs().servers().stop(serverIds, StopType.SOFT);
            ecsGroupInfoService.updateStatusById(StatusEnum.SHUTOFF.getCode(),groupId);
        }
        List<? extends Server> serverList = findHuawei();
        if(serverList.size()<=0) return new ReturnDataMap(true,"操作成功");
        List<CloudECSInfo> list = new ArrayList<>();Date date = new Date();
        for (Server server : serverList) {
            CloudECSInfo bean = new CloudECSInfo();
            bean.setId(server.getId());
            bean.setStatus(server.getStatus().value());
            bean.setUpdateTime(date);
            list.add(bean);
        }
        cloudECSInfoService.batchUpdates(list);
        return new ReturnDataMap(true,"操作成功");
    }

    private List<? extends Server> findHuawei(){
        // 初始化client
        OSClient.OSClientV3 os = OSFactory.builderV3()
                .endpoint(ConfigCommons.ecs)
                .credentials(ConfigCommons.user, ConfigCommons.password, Identifier.byId(ConfigCommons.userDomainId))
                .scopeToProject(Identifier.byId(ConfigCommons.projectId)).authenticate();

        // 设置查询参数
        Map<String , String> filter = new HashMap<>();
        // 将需要输入的参数都放入filter里面
        //filter.put("limit", "1");

        // 调用查询虚拟机列表的接口
        return os.compute().servers().list(filter);
    }
}
