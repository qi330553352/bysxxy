package com.chinasofti.sxxy.controller;

import com.chinasofti.sxxy.ResponseObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 创 建 时 间: 2018/11/8
 * 版       本: V1.0
 * 作       者: qixin
 * 版 权 所 有: 版权所有(C)2016-2026
 */
@Controller
@RequestMapping("/proxy/report-business/booking/v2/api/systemManagement")
public class SystemManagementController {


    @RequestMapping("/commons/{cask}/{path}")
    public void commons(@PathVariable("cask") String cask,@PathVariable("path") String path, HttpServletRequest request,HttpServletResponse response) throws IOException {
        int count = 0;
        byte[] buffer = new byte[8192]; // 8192=1024*8

    }

    @RequestMapping("/statistics")
    public Map<String,Object> statistics() {

        return Collections.emptyMap();
    }


    @RequestMapping("/showDataInfo")
    public Map<String,Object> showDataInfo() {
        return Collections.emptyMap();
    }

    @RequestMapping("/getTotalVO")
    public Map<String,Object> getTotalVO() {
        return Collections.emptyMap();
    }

    @RequestMapping("/saveOrUpdate")
    public Map<String,Object> saveOrUpdate(@RequestBody Object DataItem) {

        return Collections.emptyMap();

    }

    @RequestMapping("/queryDataItemByCodeType")
    public Map<String,Object> queryDataItemByCodeType(@RequestParam(required = false, value = "codeType") String codeType) {

        return Collections.emptyMap();
    }

}
