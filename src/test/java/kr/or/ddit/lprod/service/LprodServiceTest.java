package kr.or.ddit.lprod.service;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.model.LprodVO;

import org.junit.Before;
import org.junit.Test;

public class LprodServiceTest {
	
	private LprodServiceInf lpdService;
	
	@Before
	public void setup(){
		lpdService = new LprodService();
	}

	@Test
	public void selectAllLprodtest() {
		/***Given***/
		
		/***When***/
		List<LprodVO> lpdList = lpdService.selectAllLprod();
		System.out.println(lpdList.toString());
		
		/***Then***/
		assertEquals(13, lpdList.size());

	}
	
	@Test
	public void getLprodPageListTest(){
		/***Given***/
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", 2);
		map.put("pageSize", 10);
		
		/***When***/
		List<LprodVO> lpdList = (List<LprodVO>) lpdService.getLprodPageList(map);
		
		/***Then***/
		assertEquals(3, lpdList.size());

	}

}
