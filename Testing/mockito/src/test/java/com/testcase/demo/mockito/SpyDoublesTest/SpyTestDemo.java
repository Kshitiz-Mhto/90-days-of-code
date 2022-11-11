package com.testcase.demo.mockito.SpyDoublesTest;

import com.testcase.demo.mockito.Spy.Book;
import com.testcase.demo.mockito.Spy.BookService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class SpyTestDemo {


    @Test
    void demoSpy(){
        BookRepoSpy bookRepo = new BookRepoSpy();
        BookService bookService = new BookService(bookRepo);

        Book book1 = new Book("343j","Mockito in action",5000, LocalDate.now());
        Book book2 = new Book("3y3j","Mockito in action I",5000, LocalDate.now());
        Book book3 = new Book("3t43j","Mockito in action II",5000, LocalDate.now());

        bookService.addBook(book1);
        bookService.addBook(book2);
        bookService.addBook(book3);
        assertEquals(3,bookRepo.timesCalled());
        assertTrue(bookRepo.calledWith(book3));
        assertTrue(bookRepo.containIn(book1));
        assertTrue(bookRepo.containIn(book2));
        assertTrue(bookRepo.containIn(book3));
    }

    @BeforeEach
    void msg(){
        System.out.println("success!!");

    }
}
