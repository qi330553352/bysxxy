package com.chinasofti.sxxy.controller.worklist;

import com.chinasofti.sxxy.entity.WorkInstance;
import com.chinasofti.sxxy.service.WorkInstanceService;
import com.chinasofti.sxxy.util.ExcelUtil;
import com.chinasofti.sxxy.util.PageBean;
import com.chinasofti.sxxy.util.QueryResult;
import com.chinasofti.sxxy.util.ReturnDataMap;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 创  建   时  间： 2018/10/10 23:41
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
@Controller
@RequestMapping("/workInstance")
public class WorkInstanceController {

    @Autowired
    private WorkInstanceService workInstanceService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView list(){

        return new ModelAndView("work/list");
    }

    @ResponseBody
    @RequestMapping(value = "/listData", method = RequestMethod.POST)
    public Map<String,Object> indexData(String name, String addr, String status, Integer rows, Integer page, HttpServletRequest request){
        Integer offset = (page-1)*rows;
        QueryResult result = workInstanceService.findIndexData(offset,rows);
        PageBean pageBean = new PageBean(page,rows,result.getNumber(),result.getData());
        ReturnDataMap map = new ReturnDataMap(true,"数据返回成功");
        map.put("page",pageBean.getCurrentPage());
        map.put("total",pageBean.getPageCount());
        map.put("rows",pageBean.getRecordList());
        map.put("records",pageBean.getRecordCount());
        return map;
    }

    //@ResponseBody
    @RequestMapping(value = "/upload")
    public ModelAndView upload(@RequestParam(value="filename")MultipartFile file, HttpServletRequest request){
        if(file==null) return new ModelAndView("work/list");
        String originalFilename = file.getOriginalFilename();
        if(StringUtils.isEmpty(originalFilename)) return new ModelAndView("work/list");
        String extString = originalFilename.substring(originalFilename.lastIndexOf("."));
        Workbook workbook = null;
        try {
            InputStream inp = file.getInputStream();
            if(".xls".equals(extString)){
                workbook = new HSSFWorkbook(inp);
            }else if(".xlsx".equals(extString)){
                workbook = WorkbookFactory.create(inp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(workbook==null) return null;
        //获取第一个sheet
        Sheet sheet = workbook.getSheetAt(0);
        //获取最大行数
        int rownum = sheet.getPhysicalNumberOfRows();
        //获取第一行
        Row row = sheet.getRow(0);
        //获取最大列数
        int colnum = row.getPhysicalNumberOfCells();
        WorkInstance bean = new WorkInstance();
        bean.setIntroducer((String) ExcelUtil.getCellFormatValue(sheet.getRow(1).getCell(1)));
        try {
            bean.setCreateTime(new SimpleDateFormat("yyyy-MM-dd").parse((String) ExcelUtil.getCellFormatValue(sheet.getRow(2).getCell(1))));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        bean.setWorkType((String) ExcelUtil.getCellFormatValue(sheet.getRow(3).getCell(1)));
        bean.setDescribes((String) ExcelUtil.getCellFormatValue(sheet.getRow(4).getCell(1)));
        workInstanceService.save(bean);
        return new ModelAndView("work/list");
    }



    public static void main(String[] args){
        System.out.println("aaaaaaaaaaaaaa");
        String str = "C:\\Users\\lenovo\\Desktop\\工单模板.xlsx";

    }

}
