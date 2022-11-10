package com.testcase.demo.mockito.DummyDoublesDemo;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.testcase.demo.mockito.DummyDoubles.Book;
import com.testcase.demo.mockito.DummyDoubles.BookRepo;

public class FakeBookRepo implements BookRepo {

   // this is for inmemory db , hashmap or list

    Map<String, Book> bookStore = new HashMap<>();

    @Override
    public void save(Book book) {
        bookStore.put(book.getId(), book);
    }

    @Override
    public Collection<Book> findAlll() {
        return bookStore.values();
    }
}
