package com.Test.Junit.assertArrayEquals;

import com.Test.Junit.entity.Book;
import com.Test.Junit.service.BookService;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AssertArrayEquals {

    // demo for assertArrayEquals() --> means elements, order and number of terms should be equals.

    @Test
    void assertEqualsDemo(){
        System.out.println(" i m inside assertTrue method!!");
        BookService ser = new BookService();
        ser.addBook(new Book(34,"devops", "linux"));
        ser.addBook(new Book(22, "lala is ghod", "tsm"));
        ser.addBook(new Book(12, "johnny is ghod", "tsm"));

        String[] authors = ser.getBookByIdPublisher("tsm");
        assertArrayEquals(new String[] {String.valueOf(22), String.valueOf(12)} ,authors);
        assertArrayEquals(new String[] {String.valueOf(22), String.valueOf(12)} ,authors, () -> "");

    }

}
