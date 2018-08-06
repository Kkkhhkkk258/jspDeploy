package kr.or.ddit.lprod.dao;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.dao.LprodDao;
import kr.or.ddit.lprod.dao.LprodDaoInf;
import kr.or.ddit.lprod.model.LprodVO;

import org.junit.Before;
import org.junit.Test;

public class LprodDaoTest {
	private LprodDaoInf lpdDao;
	@Before
	public void setup(){
		lpdDao = new LprodDao();
	}

	@Test
	public void selectAllLprodtest() {
		/***Given***/
		
		/***When***/
		List<LprodVO> lpdList = lpdDao.selectAllLprod();

		/***Then***/
		assertEquals(13, lpdList.size());

	}
	
	@Test
	public void getLprodPageListTest(){
		/***Given***/
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("page", 1);
		map.put("pageSize", 10);
		
		/***When***/
		List<LprodVO> lpdList = lpdDao.getLprodPageList(map);
		
		/***Then***/
		assertEquals(10, lpdList.size());

	}
	
	@Test
	public void getLprodTest(){
		/***Given***/
		int id = 2;
		
		/***When***/
		LprodVO lprod = lpdDao.getLprod(id);
		
		/***Then***/
		assertEquals(2, lprod.getLprod_id());
	}

}
