package com.Test.Junit.assertEquals;

import com.Test.Junit.entity.Book;
import com.Test.Junit.service.BookService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

@DisplayName("\uD83D\uDE0C")
public class TestingwithAssertEquals {

    // demo for assertEquals and same as for assertNotEquals method

    @Test
    @DisplayName("lets see \uD83E\uDD13")
    void testing() {
        System.out.println(" i m inside assertTrue method!!");
        BookService ser = new BookService();
        ser.addBook(new Book(34,"devops", "linux"));
        ser.addBook(new Book(22, "lala is ghod", "tsm"));

        Book book1 = ser.getById(22);
        Book book2 = ser.getById(34);
        assertEquals(22, book1.getId());
        assertEquals("lala is ghod", book1.getTitle(), "title doesnot match!!");

        assertEquals(34, book2.getId(), "the book is not present");
        //assertEquals(342, book2.getId(), () -> "here the book is not present"); // shows error
    }
}
