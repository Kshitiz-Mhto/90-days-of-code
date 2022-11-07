package com.Test.Junit.ParaneterizedTests;

import com.Test.Junit.Calc;
import com.Test.Junit.StringHelper;
import org.junit.jupiter.api.*;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.*;

import static org.junit.jupiter.api.Assertions.*;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class Sources {

    @Test
    void testEven(){
        Calc calc = new Calc();
        // repeatition is happening for different values
        assertTrue(calc.isEven(88));
        assertTrue(calc.isEven(838));
        assertTrue(calc.isEven(818)); // when assertion fails, it aborts the test method
        assertTrue(calc.isEven(886));
        assertTrue(calc.isEven(8));
    }

    @ParameterizedTest
    @org.junit.jupiter.params.provider.ValueSource(ints = {4,3430,90,44})
    void testEvenParameter(int nnum){
        Calc calc = new Calc();

        assertTrue(calc.isEven(nnum)); // continues to test the values even if the assertion fails for value
    }

    @ParameterizedTest
    @NullSource
    void testRevNull(String inp){
        StringHelper str = new StringHelper();
        //str.revString("ping");
        assertEquals(null,str.revString(inp));
        assertNull(str.revString(inp));
    }
    @ParameterizedTest
    @EmptySource
    void testRevEmpty(String inp){
        StringHelper str = new StringHelper();
        assertEquals("",str.revString(inp));
    }
    @ParameterizedTest
    @NullAndEmptySource
    void testRevNullandEmpty(String inp){
        StringHelper str = new StringHelper();
        assertEquals(inp,str.revString(inp));
    }

    @ParameterizedTest
    @CsvSource({"car, rac",
            "rat, tar"})
    void testCsv(String inp, String expect){
        StringHelper str = new StringHelper();
        assertEquals( expect,str.revString(inp));

    }

    @ParameterizedTest
    @CsvSource({"car,'my,  car'",
            "rat, tar"})
    void testCsvSingleQuotes(String first, String second){

        assertNotNull(first);
        assertNotNull(second);

    }
    @ParameterizedTest
    @CsvSource({"car,"})
    void testCsvSingleQuote(String first, String second){
        assertNotNull(first);
        assertNull(second);

    }
    @ParameterizedTest
    @CsvSource({"car,''"})
    void testCsvSingleQuotee(String first, String second){
        assertNotNull(first);
        assertEquals("", second);

    }

    @ParameterizedTest
    @CsvFileSource(resources = "com.Test.Junit.ParaneterizedTests/rev.csv", numLinesToSkip = 1)
    void testCsvFile(String inp, String expect){
        StringHelper str = new StringHelper();
        assertEquals( expect,str.revString(inp));

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
