package com.Test.Junit.DynamicTest;

import com.Test.Junit.StringHelper;
import org.junit.jupiter.api.DynamicNode;
import org.junit.jupiter.api.DynamicTest;
import org.junit.jupiter.api.TestFactory;

import java.util.*;
import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.DynamicContainer.dynamicContainer;
import static org.junit.jupiter.api.DynamicTest.dynamicTest;

public class DynamicTestDemo {

    @TestFactory
    public DynamicNode testRev(){
        StringHelper ser = new StringHelper();
        return dynamicTest("dynmanic test for reverse method", () -> {
           assertEquals("god", ser.revString("dog"));

        });

    }

    @TestFactory
    public DynamicTest testRev1(){
        StringHelper ser = new StringHelper();
        return dynamicTest("dynmanic test for reverse method", () -> {
            assertEquals("god", ser.revString("dog"));

        });

    }

    @TestFactory
    public String testRev12(){
        StringHelper ser = new StringHelper();
        return String.valueOf(dynamicTest("dynmanic test for reverse method", () -> {
            assertEquals("god", ser.revString("dog"));

        }));

    }

    // ---------------------------------------------------------------

    @TestFactory
    public Collection<DynamicTest> dynamicTestfromCollection(){
        List<String> list = createList();
        List<String> list1 = createList1();
        StringHelper ser = new StringHelper();
        Collection<DynamicTest> dynamicTests = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            String input = list.get(i);
            String output = list1.get(i);
            DynamicTest dynamicTest = dynamicTest("dynmanic test for revers(): input"+input, () -> {
                assertEquals(output, ser.revString(input));

            });
            dynamicTests.add(dynamicTest);
        }
        return dynamicTests;
    }



    // using Iterable
    @TestFactory
    public Iterable<DynamicTest> dynamicTestfromIterable(){
        List<String> list = createList();
        List<String> list1 = createList1();
        StringHelper ser = new StringHelper();
        Collection<DynamicTest> dynamicTests = new ArrayList<>(); // collection extends iterable
        for (int i = 0; i < list.size(); i++) {
            String input = list.get(i);
            String output = list1.get(i);
            DynamicTest dynamicTest = dynamicTest("dynmanic test for revers(): input"+input, () -> {
                assertEquals(output, ser.revString(input));

            });
            dynamicTests.add(dynamicTest);
        }
        return dynamicTests;
    }

    //using iterator

    @TestFactory
    public Iterator<DynamicTest> dynamicTestfromIterator(){
        List<String> list = createList();
        List<String> list1 = createList1();
        StringHelper ser = new StringHelper();
        Collection<DynamicTest> dynamicTests = new ArrayList<>(); // collection extends iterable
        for (int i = 0; i < list.size(); i++) {
            String input = list.get(i);
            String output = list1.get(i);
            DynamicTest dynamicTest = dynamicTest("dynmanic test for revers(): input"+input, () -> {
                assertEquals(output, ser.revString(input));

            });
            dynamicTests.add(dynamicTest);
        }
        return dynamicTests.iterator();
    }

    //using streams

    @TestFactory
    public Stream<DynamicTest> dynamicTestfromStream(){
        List<String> list = createList();
        List<String> list1 = createList1();
        StringHelper ser = new StringHelper();
        Collection<DynamicTest> dynamicTests = new ArrayList<>(); // collection extends iterable
        for (int i = 0; i < list.size(); i++) {
            String input = list.get(i);
            String output = list1.get(i);
            DynamicTest dynamicTest = dynamicTest("dynmanic test for revers(): input"+input, () -> {
                assertEquals(output, ser.revString(input));

            });
            dynamicTests.add(dynamicTest);
        }
        return dynamicTests.stream();
    }

    // using arrays
    @TestFactory
    public DynamicTest[] dynamicTestfromArrays(){
        List<String> list = createList();
        List<String> list1 = createList1();
        StringHelper ser = new StringHelper();
        Collection<DynamicTest> dynamicTests = new ArrayList<>(); // collection extends iterable
        for (int i = 0; i < list.size(); i++) {
            String input = list.get(i);
            String output = list1.get(i);
            DynamicTest dynamicTest = dynamicTest("dynmanic test for revers(): input"+input, () -> {
                assertEquals(output, ser.revString(input));

            });
            dynamicTests.add(dynamicTest);
        }
        return dynamicTests.toArray(new DynamicTest[dynamicTests.size()]);
    }

    // dynamic container
    @TestFactory
    public Stream<DynamicNode> dynamicTestWithContainer(){
        return createList().stream()
                .map(input ->
                        dynamicContainer("container for " + input, Stream.of(
                                dynamicTest("not null", () -> assertNotNull(input)),
                                dynamicContainer("properties test", Stream.of(
                                        dynamicTest("length > 0 ", () -> assertTrue(input.length() > 0)),
                                        dynamicTest("not empty", () -> assertFalse(input.isEmpty()))

                                ))
                        ))
                        );

    }

    private List<String> createList1() {
        return Arrays.asList("rehtaf","rehtom","nos");
    }

    private List<String> createList() {
        return Arrays.asList("father","mother","son");
    }
}
