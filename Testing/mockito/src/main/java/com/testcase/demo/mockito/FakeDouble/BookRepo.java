package com.testcase.demo.mockito.FakeDouble;

import java.util.Collection;

public interface BookRepo {

    void save(Book book);

    Collection<Book> findAlll();

}
