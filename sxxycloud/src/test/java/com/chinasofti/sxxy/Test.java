package com.chinasofti.sxxy;

import com.chinasofti.sxxy.util.ConfigCommons;
import com.chinasofti.sxxy.util.StatusEnum;
import com.huawei.openstack4j.api.OSClient;
import com.huawei.openstack4j.model.common.ActionResponse;
import com.huawei.openstack4j.model.common.Identifier;
import com.huawei.openstack4j.model.compute.Action;
import com.huawei.openstack4j.model.compute.RebootType;
import com.huawei.openstack4j.model.compute.Server;
import com.huawei.openstack4j.model.compute.StopType;
import com.huawei.openstack4j.openstack.OSFactory;
import com.huawei.openstack4j.openstack.ecs.v1.internal.CloudServerService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 创 建  时 间： 2018/8/5 14:11
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
public class Test {

    public static void main(String[] args){
        OSClient.OSClientV3 os = OSFactory.builderV3()
                .endpoint(ConfigCommons.ecs)
                .credentials(ConfigCommons.user, ConfigCommons.password, Identifier.byId(ConfigCommons.userDomainId))
                .scopeToProject(Identifier.byId(ConfigCommons.projectId)).authenticate();

        List<String> serverIds = new ArrayList<>();
        serverIds.add("a81fcb62-56c4-49f7-af47-1c13ec5f952e");
        //批量开机
        //String status = os.ecs().servers().start(serverIds);
        //System.out.println("status:"+status);
        //批量关机
        //String status =os.ecs().servers().stop(serverIds, StopType.SOFT);
        //System.out.println("status:"+status);

        //查询状态
        //Server.Status status = os.compute().servers().get("a81fcb62-56c4-49f7-af47-1c13ec5f952e").getStatus();
        //System.out.println("qixin:"+status);
        //重启
        //ActionResponse actionResponse = os.compute().servers().reboot("a81fcb62-56c4-49f7-af47-1c13ec5f952e", RebootType.SOFT);
        //System.out.println("qixin:"+actionResponse);
        //停止ECS
        //ActionResponse actionResponse = os.compute().servers().action("a81fcb62-56c4-49f7-af47-1c13ec5f952e", Action.STOP);
        //System.out.println("qixin:"+actionResponse);

        //Map<String , String> filter = new HashMap<>();
        //List<? extends Server> servers = os.compute().servers().list(filter);

    }
}
