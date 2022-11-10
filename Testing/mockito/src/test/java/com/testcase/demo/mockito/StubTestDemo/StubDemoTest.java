package com.testcase.demo.mockito.StubTestDemo;

import com.testcase.demo.mockito.StubDoubles.Book;
import com.testcase.demo.mockito.StubDoubles.BookRepo;
import com.testcase.demo.mockito.StubDoubles.BookService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class StubDemoTest {

    @Test
    void demostub() {

        BookRepo bookRepo = new BookRepoStub();
        BookService bookSer = new BookService(bookRepo);

        List<Book> newWooks = bookSer.getNewBookWithDis(10, 7);

        assertEquals(3, newWooks.size());
        assertEquals(450, newWooks.get(0).getPrice());
        assertEquals(450, newWooks.get(1).getPrice());
        assertEquals(90, newWooks.get(2).getPrice());
    }

    @BeforeEach
    void msg(){
        System.out.println("Success!!");

    }
}

