package com.testcase.demo.mockito.DummyDoublesDemo;

import com.testcase.demo.mockito.DummyDoubles.EmalService;

public class DummyEmailservice implements EmalService {
    @Override
    public void sendEmail(String msg) {
        throw  new AssertionError("not complied !!!");
    }
}
