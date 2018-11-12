package com.chinasofti.sxxy.controller.ecs;

import com.chinasofti.sxxy.entity.CloudECSInfo;
import com.chinasofti.sxxy.service.CloudECSInfoService;
import com.chinasofti.sxxy.util.ConfigCommons;
import com.chinasofti.sxxy.util.PageBean;
import com.chinasofti.sxxy.util.QueryResult;
import com.chinasofti.sxxy.util.ReturnDataMap;
import com.huawei.openstack4j.api.OSClient;
import com.huawei.openstack4j.model.common.Identifier;
import com.huawei.openstack4j.model.compute.Address;
import com.huawei.openstack4j.model.compute.Server;
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
 * 创 建  时 间： 2018/8/4 17:50
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/cloudecs")
public class CloudECSController {

    @Autowired
    private CloudECSInfoService cloudECSInfoService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(){
        //更新数据库中云服务器状态
        List<? extends Server> serverList = findHuawei();
        if(serverList.size()<=0) return new ModelAndView("cloudecs/list");
        List<CloudECSInfo> list = new ArrayList<>();Date date = new Date();
        for (Server server : serverList) {
            CloudECSInfo bean = new CloudECSInfo();
            bean.setId(server.getId());
            bean.setStatus(server.getStatus().value());
            bean.setUpdateTime(date);
            list.add(bean);
        }
        cloudECSInfoService.batchUpdates(list);
        return new ModelAndView("cloudecs/list");
    }

    @ResponseBody
    @RequestMapping(value = "/listData", method = RequestMethod.POST)
    public Map<String,Object> indexData(String name, String addr,String status, Integer rows, Integer page, HttpServletRequest request){
        Integer offset = (page-1)*rows;
        QueryResult result = cloudECSInfoService.findIndexData(name,addr,status,offset,rows);
        PageBean pageBean = new PageBean(page,rows,result.getNumber(),result.getData());
        ReturnDataMap map = new ReturnDataMap(true,"数据返回成功");
        map.put("page",pageBean.getCurrentPage());
        map.put("total",pageBean.getPageCount());
        map.put("rows",pageBean.getRecordList());
        map.put("records",pageBean.getRecordCount());
        return map;
    }

    @ResponseBody
    @RequestMapping(value = "/refresh", method = RequestMethod.GET)
    public Map<String,Object> refresh(){
        List<? extends Server> serverList = findHuawei();
        if(serverList.size()<=0) return new ReturnDataMap(true,"没查询到数据");
        List<CloudECSInfo> list = new ArrayList<>();Date date = new Date();
        for (Server server : serverList) {
            CloudECSInfo bean = new CloudECSInfo();
            bean.setId(server.getId());
            bean.setName(server.getName());
            bean.setStatus(server.getStatus().value());
            Address address = server.getAddresses().getAddresses().values().iterator().next().get(0);
            bean.setAddr(address.getAddr());
            bean.setMacAddr(address.getMacAddr());
            bean.setAddrVersion(address.getVersion());
            bean.setAddrType(address.getType());
            bean.setCreateTime(date);
            bean.setUpdateTime(date);
            list.add(bean);
        }
        cloudECSInfoService.batchInserts(list);
        return new ReturnDataMap(true,"已更新到数据库");
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
