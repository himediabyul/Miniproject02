package com.spring.miniproject.controller;

import com.spring.miniproject.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SaleListController {

    @Autowired
    private ListService listService;

    @RequestMapping("/sale/list")
    public String getList(Model model) {

        model.addAttribute("list", listService.getSaleList());

        return "/sale/list";
    }

}