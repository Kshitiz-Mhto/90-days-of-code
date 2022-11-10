package com.testcase.demo.mockito.DummyDoubles;

import org.springframework.beans.factory.annotation.Autowired;

public class BookService {


    @Autowired
    private BookRepo bookRepo;
    @Autowired
    private EmalService emailService;

    public BookService (BookRepo bookRepo, EmalService emailService){

        this.bookRepo = bookRepo;
        this.emailService = emailService;
    }
    public void addBook(Book book){
        bookRepo.save(book);

    }

    public int findNumberOfBooks(){
        return bookRepo.findAlll().size();

    }

    // Email service

}
