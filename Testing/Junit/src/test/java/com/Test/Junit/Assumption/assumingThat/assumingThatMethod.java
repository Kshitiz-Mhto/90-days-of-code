package com.Test.Junit.Assumption.assumingThat;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assumptions.assumingThat;

public class assumingThatMethod {

    // takes two things - boolean assumption and ann Executable
    // if assumption condition is true then it executes the supplied executable, if false it skips executables

    //syntax
    // assumingThat(boolean, Executable)
    // assumingThat(BooleanSupplier boolean, Executable)

    @Test
    void assumingThatMethod(){
        assumingThat("DEVi".equals("DEV"), () -> {
            System.out.println("Dev is on");
            assertEquals(9,9);
        });
        // this code will get executed any how
        System.out.println("assumption failed");
        assertEquals(9,9);

    }
    @Test
    void assumisngThatMethod(){
        assumingThat(() -> "DEV".equals("DEV"), () -> {
            System.out.println("Dev is on");
            assertEquals(9,9);
        });
        // this code will get executed any how
        System.out.println("assumption failed");
        assertEquals(9,9);

    }
}
