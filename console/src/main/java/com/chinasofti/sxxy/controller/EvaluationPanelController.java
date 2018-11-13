package com.chinasofti.sxxy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 创 建  时 间： 2018/11/13 16:25
 * 版           本:  V1.0
 * 作           者:  qixin
 * Copyright (c) 2018, 中软国际.
 */
@Controller
@RequestMapping("/evaluationPanel")
public class EvaluationPanelController {


    @RequestMapping("/index")
    public ModelAndView index(){

        return new ModelAndView("evaluationPanel/index");
    }

    @RequestMapping("/evaIntroList")
    public ModelAndView evaIntroList(){

        return new ModelAndView("evaluationPanel/evaIntroList");
    }

    @RequestMapping("/evaRulesList")
    public ModelAndView evaRulesList(){

        return new ModelAndView("evaluationPanel/evaRulesList");
    }

    @RequestMapping("/evaTemplateList")
    public ModelAndView evaTemplateList(){

        return new ModelAndView("evaluationPanel/evaTemplateList");
    }

}
