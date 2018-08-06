package kr.or.ddit.file;

import static org.junit.Assert.*;

import org.junit.Test;

public class FileUtilTest {

	@Test
	public void test() {
		/***Given***/
		String contentDisposition = "form-data; name=\"uploadFile\"; filename=\"mug_obj_151935157760833301.jpg\"";
		
		/***When***/
		String fileName = FileUtil.getFileName(contentDisposition);
		
		/***Then***/
		assertEquals("mug_obj_151935157760833301.jpg", fileName);
	}

}
