package com.testcase.demo.mockito.Spy;

import org.springframework.beans.factory.annotation.Autowired;

public class BookService {


    @Autowired
    private BookRepo bookRepo;


    public BookService (BookRepo bookRepo){

        this.bookRepo = bookRepo;
    }
    public void addBook(Book book){
        bookRepo.save(book);

    }


}
