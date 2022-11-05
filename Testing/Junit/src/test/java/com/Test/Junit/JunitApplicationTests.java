package com.Test.Junit;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
class JunitApplicationTests {

	@Test
	void contextLoads() {
		assertEquals(9,9);
		assertTrue(true);


	}

	@BeforeAll
	static void beforeLoads() {
		//assertTrue(false, "lala is here");
		assertTrue(true, "all is good to go");
	}
}
