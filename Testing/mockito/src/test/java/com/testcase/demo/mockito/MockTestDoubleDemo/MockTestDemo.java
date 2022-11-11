package com.testcase.demo.mockito.MockTestDoubleDemo;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.time.LocalDate;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.testcase.demo.mockito.Mock.Book;
import com.testcase.demo.mockito.Mock.BookService;

public class MockTestDemo {


    @Test
    void demoSpy(){
        BookRepoMock bookRepo = new BookRepoMock();// indifferent to spy, mockRepo will take care for verification will
        BookService bookService = new BookService(bookRepo);

        Book book1 = new Book("343j","Mockito in action",500, LocalDate.now());
        Book book2 = new Book("3y3j","Mockito in action I",300, LocalDate.now());
        Book book3 = new Book("3t43j","Mockito in action II",200, LocalDate.now());

        bookService.addBook(book1); //return
        bookService.addBook(book2); // save will called
        bookService.addBook(book3); // save will called

        bookRepo.verify(book3,2);

    }
}
