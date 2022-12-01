package com.spring.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MemberLogoutController {

    @GetMapping("/logout")
    public String logout(HttpSession httpSession){

        httpSession.invalidate();

        return "redirect:/index";

    }

}
