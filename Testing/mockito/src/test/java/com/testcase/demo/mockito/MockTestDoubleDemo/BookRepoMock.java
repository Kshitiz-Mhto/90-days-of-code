package com.testcase.demo.mockito.MockTestDoubleDemo;

import java.util.ArrayList;
import java.util.List;

import com.testcase.demo.mockito.Mock.Book;
import com.testcase.demo.mockito.Mock.BookRepo;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class BookRepoMock implements BookRepo {

    int saveCalled = 0;
    List<Book> lastAddedBookList = new ArrayList<>();
    Book lastAddedBook = null;

    @Override
    public void save(Book book) {
        saveCalled++;
        lastAddedBookList.add(book);
        lastAddedBook = book;
    }

    public void verify (Book book, int times){
        assertEquals(times, saveCalled);
        assertEquals(book, lastAddedBook);
        assertTrue(!lastAddedBookList.isEmpty());

    }

}
