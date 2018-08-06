package kr.or.ddit.encrypt.kisa.sha256;

import static org.junit.Assert.*;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class KISA_SHA256_Test {
	private Logger logger = LoggerFactory.getLogger(KISA_SHA256_Test.class);

	/**
	* Method : encryptTest
	* 최초작성일 : 2018. 7. 18.
	* 작성자 : PC14
	* 변경이력 :
	* Method 설명 : sha256 hash 암호화 테스트
	*/
	@Test
	public void encryptTest() {
		/***Given***/
		String plainText = "3535";
		String plainText2 ="12345";
		
		/***When***/
		String encryptText = KISA_SHA256.encrypt(plainText);
		String encryptText2 = KISA_SHA256.encrypt(plainText2);
		logger.debug("encryptText : "+ encryptText);
		logger.debug("encryptText2 : "+ encryptText2);
		
		/***Then***/
		assertEquals("deb2676eeef1cf8fc35f1e58cd86a0ac23155a915589dc6615986fc4a4a", encryptText);
		assertEquals("5994471abb1112afcc18159f6cc74b4f511b9986da59b3caf5a9c173cacfc5", encryptText2);

	}

}
