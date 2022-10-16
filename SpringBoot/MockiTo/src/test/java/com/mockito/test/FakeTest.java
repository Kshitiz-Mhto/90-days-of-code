package com.mockito.test;

import com.mockito.Book;
import com.mockito.BookService;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class FakeTest {

    @Test
    public void testFake(){

        FakeBookRepo fakeBookRepo = new FakeBookRepo();
        BookService bookService = new BookService(fakeBookRepo);

        bookService.addBook((new Book("122", "mokito","lala")));
        bookService.addBook((new Book("14322", "mokito1","lala909")));
        bookService.addBook((new Book("1522", "mokito101","lala3")));

        assertEquals(3, bookService.findNumberOfBooks());
    }
}
