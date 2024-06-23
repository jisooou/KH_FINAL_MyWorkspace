package com.kh.app01.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("home")
    public String home(){
        System.out.println("HomeController.home");
        return "home";
    }

}
