package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping(name = "/", produces = "application/json")
    public Item home(){
        return new Item("hello, i am here!!");
    }

}
