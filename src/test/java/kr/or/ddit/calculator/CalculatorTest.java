package kr.or.ddit.calculator;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class CalculatorTest {
	
	/*	
	 	beforeClass(@BeforeClass)
		setup() (@Before) 실행 --> 테스트 메소드 실행 ---> tearDown()(@After) 실행
		setup() (@Before) 실행 --> 테스트 메소드 실행 ---> tearDown()(@After) 실행
		setup() (@Before) 실행 --> 테스트 메소드 실행 ---> tearDown()(@After) 실행
		setup() (@Before) 실행 --> 테스트 메소드 실행 ---> tearDown()(@After) 실행
		afterClass(@AfterClass)
	*/
	private Calculator cal ;
	private int param1;
	private int param2;
	
	
	@Before
	public void setup(){
		cal = new Calculator();
		param1 =6;
		param2 =5;
	}
	
	@After
	public void tearDown(){
		
	}

	@Test
	public void addtest() {
		/***Given***/

		/***When***/
		int addResult = cal.add(param1, param2);

		/***Then***/
		assertEquals(11, addResult);

	}
	
	/**
	* Method : minusTest
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC14
	* 변경이력 :
	* Method 설명 :계산기의 뺄셈 기능 테스트
	*/
	@Test
	public void minusTest(){
		/***Given***/
		
		/***When***/
		int minusResult = cal.minus(param1, param2);
		
		/***Then***/
		assertEquals(1, minusResult);
	}
	
	/**
	* Method : mulTest
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC14
	* 변경이력 :
	* Method 설명 :계산기의 곱셈 기능 테스트
	*/
	@Test
	public void mulTest(){
		/***Given***/
		
		/***When***/
		int mulResult = cal.mul(param1, param2);
		
		/***Then***/
		assertEquals(30, mulResult);
	}
	
	/**
	* Method : divTest
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC14
	* 변경이력 :
	* Method 설명 : 계산기의 나눗셈 기능 테스트
	*/
	@Test
	public void divTest(){
		/***Given***/
		
		/***When***/
		int divResult = cal.div(param1, param2);

		/***Then***/
		assertEquals(1, divResult);
	}
	
	@Test
	public void diveByZeroTest(){
		/***Given***/
		param2 = 0;
		/***When***/
		int divResult = cal.div(param1, param2);
		
		/***Then***/
		assertEquals(0, divResult);
	}

}
