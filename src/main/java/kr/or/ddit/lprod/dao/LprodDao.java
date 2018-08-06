package kr.or.ddit.lprod.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.lprod.model.LprodVO;
import kr.or.ddit.mybatis.SqlMapSessionFactory;

public class LprodDao implements LprodDaoInf {
	private SqlSessionFactory sessionFactory = SqlMapSessionFactory.getSqlSessionFactory();

	/**
	* Method : selectAllLprod
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC14
	* 변경이력 :
	* @return
	* Method 설명 : 모든 lprod 리스트 정보 조회
	*/
	@Override
	public List<LprodVO> selectAllLprod() {
		List<LprodVO> lprodList = null;
		SqlSession session = sessionFactory.openSession();
		lprodList = session.selectList("lprod.selectAllLprod");
		session.close();
		return lprodList;
	}

	/**
	* Method : getLprodPageList
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC14
	* 변경이력 :
	* @param map
	* @return
	* Method 설명 : lprod 페이지 리스트 조회
	*/
	@Override
	public List<LprodVO> getLprodPageList(Map<String, Integer> map) {
		List<LprodVO> lprodList = null;
		SqlSession session = sessionFactory.openSession();
		lprodList = session.selectList("lprod.getLprodPageList", map);
		session.close();
		return lprodList;
	}

	@Override
	public LprodVO getLprod(int lprod_id) {
		SqlSession session = sessionFactory.openSession();
		LprodVO lprod = session.selectOne("lprod.getLprod", lprod_id);
		session.close();
		return lprod;
	}

	@Override
	public int getTotalLprod() {
		SqlSession session = sessionFactory.openSession();
		int total = session.selectOne("lprod.getTotalLprod");
		session.close();
		return total;
	}

}
