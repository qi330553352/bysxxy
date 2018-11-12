package com.chinasofti.sxxy.controller.worklist;

import com.chinasofti.sxxy.util.ExcelUtil;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.springframework.util.StringUtils;

import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 创  建   时  间： 2018/10/12 19:29
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
public class ExcelTest {

    public static void main(String[] args) {
        String filePath = "C:\\Users\\lenovo\\Desktop\\工单模板.xlsx";
        String columns[] = {"name","age","score"};
        Workbook wb = ExcelUtil.readExcel(filePath);
        if(wb ==null) return;

        //用来存放表中数据
        List<Map<String,Object>> list = new ArrayList<>();
        //获取第一个sheet
        Sheet sheet = wb.getSheetAt(0);
        //获取最大行数
        int rownum = sheet.getPhysicalNumberOfRows();
        //获取第一行
        Row row = sheet.getRow(0);
        //获取最大列数
        int colnum = row.getPhysicalNumberOfCells();
        for (int i = 1; i<rownum; i++) {
            Map<String,Object> map = new LinkedHashMap<>();
            row = sheet.getRow(i);
            if(row !=null){
                for (int j=0;j<colnum;j++){
                    Object cellData = ExcelUtil.getCellFormatValue(row.getCell(j));
                    map.put(columns[j], cellData);
                }
            }else{
                break;
            }
            list.add(map);
        }

        //遍历解析出来的list
        for (Map<String,Object> map : list) {
            for (Map.Entry<String,Object> entry : map.entrySet()) {
                System.out.print(entry.getKey()+":"+entry.getValue()+",");
            }
            System.out.println();
        }

    }




}
