package com.example.springcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
    @GetMapping("/hello") //Ánh xạ đường dẫn "/hello" đến với handle
    public String handle(Model model){
        model.addAttribute("message", "Hello world");
        return "/index";
    }
}
