package com.testcase.demo.mockito.FakeDouble;

import com.testcase.demo.mockito.FakeDouble.Book;
import com.testcase.demo.mockito.FakeDouble.BookRepo;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class BookRepoImpl implements BookRepo {

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
