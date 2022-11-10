package com.testcase.demo.mockito.StubDoubles;

import java.util.List;

public interface BookRepo {

    List<Book> findNewBooks(int days);
}
