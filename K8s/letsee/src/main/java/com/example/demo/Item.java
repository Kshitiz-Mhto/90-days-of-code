package com.example.demo;

public class Item {
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    private  String message;

    public Item (String msg){
        this.message = msg;

    }
}
