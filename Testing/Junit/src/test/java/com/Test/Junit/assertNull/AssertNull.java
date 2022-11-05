package com.Test.Junit.assertNull;

import com.Test.Junit.entity.Book;
import com.Test.Junit.service.BookService;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

// demo for assertNull and same for assertNotNull

public class AssertNull {
    @Test
    void testingWithSupplier0(){
        System.out.println(" i m inside assertTrue method!!");
        BookService ser = new BookService();
        ser.addBook(new Book());
        ser.addBook(new Book(22,"lala is ghod","tsm"));
        ser.addBook(new Book());
        ser.addBook(new Book());
        List<Book> listOfBooks = ser.books();

        assertNull(null);
        assertNull(ser.getById(23), () ->  "hell yeah! something is wrong"); // values is not null so the msg is supplier using supplier interface...

    }

}
