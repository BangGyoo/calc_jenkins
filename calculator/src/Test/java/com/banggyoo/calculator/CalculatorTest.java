package com.banggyoo.calculator;
import org.banggyoo.Test;
import static org.junit.Assert.assertEquals;

public class CalculatorTest {
	private Calculator calculator = new Calculator();

	public void testSum(){
		assertEquals(5, calculator.sum(2,3));
	}
	public void testDif(){
		assertEquals(-1, calculator.dif(2,3));
	}
}
