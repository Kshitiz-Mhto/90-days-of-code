package com.testcase.demo.mockito.StubTestDemo;

import com.testcase.demo.mockito.StubDoubles.Book;
import com.testcase.demo.mockito.StubDoubles.BookRepo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class BookRepoStub implements BookRepo {
    @Override
    public List<Book> findNewBooks(int days) {
        List<Book> newBooks = new ArrayList<>();
        Book book0 = new Book("343j","Mockito in action",500, LocalDate.now());
        Book book1 = new Book("3y3j","Mockito in action I",500, LocalDate.now());
        Book book2 = new Book("3t43j","Mockito in action II",100, LocalDate.now());
        newBooks.add(book0);
        newBooks.add(book1);
        newBooks.add(book2);
        return newBooks;
    }
}
