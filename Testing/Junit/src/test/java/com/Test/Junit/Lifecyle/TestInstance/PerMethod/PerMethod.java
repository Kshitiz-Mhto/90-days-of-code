package com.Test.Junit.Lifecyle.TestInstance.PerMethod;

import org.junit.jupiter.api.*;

public class PerMethod {

    public PerMethod(){
        System.out.println("inside constructor");

    }

    @BeforeAll
    static  void beforeAll(){
        System.out.println("i m beforeall and called before creating an instance");

    }
    @AfterAll
    static  void AfterAll(){
        System.out.println("i m afterall and called after completing the lifecycle");
    }

    @BeforeEach
    void beforeeach(){
        System.out.println("i m here before each test method");
    }
    @AfterEach
    void aftereach(){
        System.out.println("i m here after each test method");
    }
    @Test
    void test1(){
        System.out.println("inside test1");

    }

    @Test
    void test2(){
        System.out.println("inside test2");

    }

    @Test
    void test3(){
        System.out.println("inside test3");

    }

}
