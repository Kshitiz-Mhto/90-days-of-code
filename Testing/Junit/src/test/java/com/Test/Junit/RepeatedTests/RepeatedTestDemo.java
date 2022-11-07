package com.Test.Junit.RepeatedTests;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class RepeatedTestDemo {

    public RepeatedTestDemo(){
        System.out.println("inside constructor..");

    }

    @RepeatedTest(5)
    void repeatedTest(){
        assertEquals(9,9);

    }

    //--------------------------------------------------------
    @RepeatedTest(value = 5,name = "{displayName} -{currentRepetition}/{totalRepetitions}") //dynamic placeholder
    @DisplayName("simple Repeating")
    void repeatedTestCustomName(){
        assertEquals(9,9);

    }
    //------------------------------------------------------------
    @RepeatedTest(value = 5,name = RepeatedTest.LONG_DISPLAY_NAME)
    @DisplayName("repeated testing")
    void repeatedTesCustomFormatLong(){
        assertEquals(9,9);

    }
    @RepeatedTest(value = 5,name = RepeatedTest.SHORT_DISPLAY_NAME)
    @DisplayName("repeated testing") // invisible
    void repeatedTesCustomFormatShort(){
        assertEquals(9,9);

    }


    @BeforeAll
    static void beforeAll(){
        System.out.println("ready for lifecycle to begin !!");

    }
    @AfterAll
    static void afterAll(){
        System.out.println("Lifecycle is fininshed !!");

    }

    @AfterEach
    void successMsg(){
        System.out.println("Success!!");

    }

}
