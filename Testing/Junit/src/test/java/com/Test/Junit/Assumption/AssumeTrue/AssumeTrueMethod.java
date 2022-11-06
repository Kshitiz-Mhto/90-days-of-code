package com.Test.Junit.Assumption.AssumeTrue;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assumptions.assumeFalse;
import static org.junit.jupiter.api.Assumptions.assumeTrue;

public class AssumeTrueMethod {
// assumeTrue
    //helps in validating that provided assumption is true.
    // throws TestAborted Exception if assumption is not satisfied.
    //if assumption is false then skips the test case

    //Syntax

    // assumeTrue(boolean assumption)
    // assumeTrue(boolean assumption, String msg)
    // assumeTrue(SupplierBoolean assumption, String msg, Supplier<String> msg)

     @Test
    void assumeTrueMeth() {
         assumeTrue(true);
         assumeTrue("DEV".equals(System.getProperty("ENV")), () -> "sdfsdfAssumption failed");
         System.out.println("Asuumption is passed");
         assertEquals(8, 8);
     }

// assumeFalse()

    //if the assumption condition is false then test proceeds otherwise aborts.
    @Test
    void assumeFalseMeth() {
        assumeTrue(true);
        assumeFalse("DEV".equals(System.getProperty("ENV")));
        System.out.println("Asuumption is passed");
        assertEquals(8, 8);
    }
    @Test
    void assumeFalseMeth1() {
        assumeTrue(true);
        assumeFalse("DEV".equals(System.getProperty("ENV")), "sdfsdfAssumption failed");
        System.out.println("Asuumption is passed");
        assertEquals(8, 8);
    }
    @Test
    void assumeFalseMeth2() {
        assumeTrue(true);
        assumeFalse("DEV".equals(System.getProperty("ENV")), () -> "sdfsdfAssumption failed");
        System.out.println("Asuumption is passed");
        assertEquals(8, 8);
    }

}

