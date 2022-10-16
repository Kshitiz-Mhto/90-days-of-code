package com.jpa.projpa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jpa.projpa.dao.UserRepo;
import com.jpa.projpa.entity.User;

@Controller
public class HomeController {
    
    @Autowired
    UserRepo repo;

    @RequestMapping("/")
    public String Home(){
        return "signup";
    }

    @RequestMapping("/formProcess")
    public String processForm(@ModelAttribute("user") User user, Model model){
        // ConfigurableApplicationContext context = SpringApplication.run(ProjpaApplication.class);
        // UserRepo repo = context.getBean(UserRepo.class);
        user.setId(5005);
        repo.save(user);
        // context.close();
        model.addAttribute("msg", "successfull!!");
        return "success";
    }
}
