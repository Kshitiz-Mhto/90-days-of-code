package com.Test.Junit.Timeout;

import com.Test.Junit.entity.Book;
import com.Test.Junit.service.BookService;
import org.junit.jupiter.api.Test;

import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertTimeout;

public class assertTimeoutMethod {
    // used to test long running tasks, fails if the given task inside the test case take more than specified...
    // the executable provided to the test case will be executed in the same thread as that of calling code. 'Executable' just a block of code...
    // the execution of the executable will not be preemptively aborted if the timeout is exceeded.
    // helps to improve the performance of the codebase

    //syntax
    // assertTimeout(Duration timeout, Executable executable)
    // assertTimeout(Duration timeout, Executable executable, String msg) string evaluates every time the test case is runned
    // assertTimeout(Duration timeout, Executable executable, Supplier<String> msg) string evaluates only if the test case fails

    @Test
    void timeoutTest(){
        BookService ser = new BookService();
        for (int i = 0; i < 10000; i++) {
            ser.addBook(new Book(i, "pose fo adam", "max"));
        }
        List<String> tit = new ArrayList<>();
        assertTimeout(Duration.ofMillis(1), () -> {

            tit.addAll(List.of(ser.getBookByIdPublisher("max")));
        });
        List<String> wtit = new ArrayList<>();
        assertTimeout(Duration.ofMillis(1), () -> {

            wtit.addAll(List.of(ser.getBookByIdPublisher("max")));
        }, () -> "timeout exceed!!");
    }
    // assertTimeoutPreemptively() method
}
// the executable provided to the test case will be executed in the [different] thread as that of calling code. 'Executable' just a block of code...
// the execution of the executable will be preemptively aborted if the timeout is exceeded.
