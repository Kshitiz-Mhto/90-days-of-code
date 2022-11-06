package com.Test.Junit.Lifecyle.TestInstance;

public class TestInstance {

    // @TestInstance annotation to  change lifecycle behaviour of test class.

    // has two modes:-
     // @TestInstance(Lifecycle.PER_METHOD) by default -> JUnit create a new instances of the class before executing each test method

    // @TestInstance(Lifecycle.PER_CLASS) -> JUNit create instances once
}
