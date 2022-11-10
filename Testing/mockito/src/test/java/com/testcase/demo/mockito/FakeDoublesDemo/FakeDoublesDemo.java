package com.testcase.demo.mockito.FakeDoublesDemo;

import com.testcase.demo.mockito.FakeDouble.Book;
import com.testcase.demo.mockito.FakeDouble.BookRepo;
import com.testcase.demo.mockito.FakeDouble.BookService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class FakeDoublesDemo{

    @Test
    void testFakeRpo(){

        BookRepo bookRepo = new FakeBookRepo();
        BookService bookService = new BookService(bookRepo);
        bookService.addBook(new Book("343j","Mockito in action",5000, LocalDate.now()));
        bookService.addBook(new Book("3y3j","Mockito in action I",5000, LocalDate.now()));
        bookService.addBook(new Book("3t43j","Mockito in action II",5000, LocalDate.now()));

        int num = bookService.findNumberOfBooks();
        assertEquals(3, num);
    }

    @AfterEach
    void msg(){
        System.out.println("success!!");

    }

}

