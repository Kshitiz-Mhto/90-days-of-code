package com.mockito.test;

import com.mockito.Book;
import com.mockito.BookRepo;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class FakeBookRepo implements BookRepo {

    Map<String, Book> bookStore = new HashMap<>();

    @Override
    public void save(Book book) {
        bookStore.put(book.getId(), book);
    }
    @Override
    public Collection<Book> findAll() {
        return bookStore.values();
    }
}
