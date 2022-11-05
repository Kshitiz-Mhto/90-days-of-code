package com.Test.Junit.assertThrows;

import com.Test.Junit.Exception.CustomExcep;
import com.Test.Junit.entity.Book;
import com.Test.Junit.service.BookService;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assumptions.assumeTrue;

@DisplayName("HEHE")
//@Disabled("util the PR #109 get merged")
public class AssertThrows {
    // assertThrows() method
    // helps in asserting that execution of Executable throws an exception of the expectedType and returns the exception
    // if no exception is thrown or different one is thrown then assert will fail.
    // it follows the inheritance heirarchy, so the assert will pass if the expectedType is parent class and actual is child class of it.

    //syntax

    // public static <T extends Throwable> T assertThrows (Class<T> expectedType, Executable executable)
    // public static <T extends Throwable> T assertThrows (Class<T> expectedType, Executable executable, String msg)
    // public static <T extends Throwable> T assertThrows (Class<T> expectedType, Executable executable, Supplier<String< msg)

    @Test
    @Disabled("skipped utill #88 issue has been resolved")
    @DisplayName("custom Exception name lala")
    void assertThrowsMethod(){
        System.out.println("inside the test method");
        BookService ser = new BookService();
        ser.addBook(new Book(32,"popo","heralaL"));
        ser.addBook(new Book(22,"lala is ghod","tsm"));

        assertThrows(CustomExcep.class, () -> ser.getByTitle("lala is god"), () -> "CustomExcep is caught");

    }

    @BeforeAll
    @Disabled // allows to skip or disable the test .... it takes in optional parameter, which provides a reason for disabling test case for docs.
    static void lal(){
        System.out.println("BeforeAll is here");
    }

    @Test
    void testing(){
        assumeTrue(() -> true, () -> "it is not ture");

    }


}
