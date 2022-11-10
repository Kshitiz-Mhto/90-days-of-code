package com.testcase.demo.mockito.DummyDoubles;

import java.time.LocalDate;

public class Book {

    private String id;
    private String title;
    private int price;
    private LocalDate pubDate;

    public Book(){
        super();

    }

    public Book(String id, String title, int price, LocalDate pubDate){
        this.id = id;
        this.title = title;
        this.price = price;
        this.pubDate= pubDate;

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public LocalDate getPubDate() {
        return pubDate;
    }

    public void setPubDate(LocalDate pubDate) {
        this.pubDate = pubDate;
    }
}
