package com.chinasofti.sxxy.util;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import java.io.FileInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;

/**
 * 创  建   时  间： 2018/10/12 19:20
 * 版           本: V1.0
 * 作           者: qixin
 * 版  权   所  有: 版权所有(C)2016-2026
 */
public class ExcelUtil {

    public static Workbook readExcel(String filePath){
        if(StringUtils.isEmpty(filePath)) return null;
        String extString = filePath.substring(filePath.lastIndexOf("."));
        try {
            InputStream inp = new FileInputStream(filePath);
            if(".xls".equals(extString)){
                return new HSSFWorkbook(inp);
            }else if(".xlsx".equals(extString)){
                return WorkbookFactory.create(inp);
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Object getCellFormatValue(Cell cell){
        Object cellValue = null;
        if(cell == null) return "";
        CellType cellType = cell.getCellTypeEnum();
        switch (cellType){
            case BLANK:{
                cellValue = "";
                System.out.println("excel出现空值");
                break;
            }case STRING:{
                cellValue = cell.getStringCellValue();
                break;
            }case BOOLEAN:{
                cellValue = cell.getBooleanCellValue();
                break;
            }case NUMERIC:{
                if (HSSFDateUtil.isCellDateFormatted(cell)) {
                    cellValue = new SimpleDateFormat("yyyy-MM-dd").format(cell.getDateCellValue());
                    break;
                }else {// 纯数字
                    BigDecimal big=new BigDecimal(cell.getNumericCellValue());
                    //解决1234.0  去掉后面的.0
                    if(null != big.toString() && !"".equals(big.toString().trim())){
                        String[] item = big.toString().split("[.]");
                        if(1<item.length&&"0".equals(item[1])){
                            cellValue=item[0];
                        }
                    }
                    break;
                }
            }case FORMULA:{
                //读公式计算值
                cellValue = String.valueOf(cell.getNumericCellValue());
                if (cellValue.equals("NaN")) {// 如果获取的数据值为非法值,则转换为获取字符串
                    cellValue = cell.getStringCellValue();
                }
                break;
            }case ERROR:{
                cellValue = "";
                System.out.println("excel出现故障");
                break;
            }default:{
                cellValue = "";
            }
        }
        return cellValue;
    }


}
