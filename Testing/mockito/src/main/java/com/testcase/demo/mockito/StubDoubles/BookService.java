package com.testcase.demo.mockito.StubDoubles;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BookService {


    @Autowired
    private BookRepo bookRepo;


    public BookService (BookRepo bookRepo){

        this.bookRepo = bookRepo;
    }

    public List<Book> getNewBookWithDis(int disRate, int days){
        List<Book> newListBooks = bookRepo.findNewBooks(days);
        // 500 apply 10% --> 10% of 500 = 50 --> 500 -50 = 450

        for(Book book: newListBooks){
            int price = book.getPrice();
            int newprice = price - (disRate * price /100);
            book.setPrice(newprice);

        }
        return newListBooks;
    }


}
