package com.testcase.demo.mockito.SpyDoublesTest;

import com.testcase.demo.mockito.Spy.Book;
import com.testcase.demo.mockito.Spy.BookRepo;

import java.util.ArrayList;
import java.util.List;

public class BookRepoSpy implements BookRepo {

    int saveCalled = 0;
    List<Book> lastAddedBookList = new ArrayList<>();
    Book lastAddedBook = null;

    @Override
    public void save(Book book) {
        saveCalled++;
        lastAddedBookList.add(book);
        lastAddedBook = book;
    }

    public int timesCalled(){
        return saveCalled;
    }

    public boolean calledWith (Book book){
        return lastAddedBook.equals(book);

    }

    public boolean containIn (Book book){
        return (lastAddedBookList.contains(book));

    }
}
