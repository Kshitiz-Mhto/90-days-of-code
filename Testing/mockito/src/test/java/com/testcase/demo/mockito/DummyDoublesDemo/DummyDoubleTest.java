package com.testcase.demo.mockito.DummyDoublesDemo;



import com.testcase.demo.mockito.DummyDoubles.Book;
import com.testcase.demo.mockito.DummyDoubles.BookService;
import com.testcase.demo.mockito.DummyDoubles.EmalService;


import com.testcase.demo.mockito.DummyDoubles.BookRepo;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class DummyDoubleTest {

    @Test
    void demoDummy(){

        BookRepo bookRepo = new FakeBookRepo();
        EmalService emailService = new DummyEmailservice();
        BookService bookService = new BookService(bookRepo, emailService);
        bookService.addBook(new Book("343j","Mockito in action",5000, LocalDate.now()));
        bookService.addBook(new Book("3y3j","Mockito in action I",5000, LocalDate.now()));
        bookService.addBook(new Book("3t43j","Mockito in action II",5000, LocalDate.now()));

        int num = bookService.findNumberOfBooks();
        assertEquals(3, num);

    }
}
