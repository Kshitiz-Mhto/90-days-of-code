package com.Test.Junit.ParaneterizedTests;

import com.Test.Junit.StringHelper;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

public class MethodSourceDemo {

    @ParameterizedTest
    @MethodSource("stringProvider")
    void methodSourceTest(String data){
        assertNotNull(data);

    }

    static Stream<String> stringProvider(){
        return Stream.of("dog","lala","pop");

    }
// ------------------------------------------------
    @ParameterizedTest
    @MethodSource("argumentProvider")
    void methodSourceTest1(String input, String expceted){
        StringHelper str = new StringHelper();
        assertEquals( expceted,str.revString(input));

    }

    static Stream<Arguments> argumentProvider(){
        return Stream.of(
                Arguments.arguments("car","rac"),
                Arguments.arguments("rat","tar")

        );

    }


}
