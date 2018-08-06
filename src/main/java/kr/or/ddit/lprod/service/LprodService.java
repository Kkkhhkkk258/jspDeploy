package kr.or.ddit.lprod.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.dao.LprodDao;
import kr.or.ddit.lprod.dao.LprodDaoInf;
import kr.or.ddit.lprod.model.LprodVO;

public class LprodService implements LprodServiceInf {
	private LprodDaoInf lpdDao = new LprodDao();

	@Override
	public List<LprodVO> selectAllLprod() {
		return lpdDao.selectAllLprod();
	}

	@Override
	public Map<String,Object> getLprodPageList(Map<String, Integer> map) {
		
		int total = lpdDao.getTotalLprod();
		int page = map.get("page");
		int pageSize = map.get("pageSize");
		
		Map<String, Object> resultmap = new HashMap<String, Object>();
		
		resultmap.put("navi", makePageNavi(page, pageSize, total));
		
		List<LprodVO> list = lpdDao.getLprodPageList(map);
		resultmap.put("lpdList", list);
		
		return resultmap;
	}

	@Override
	public LprodVO getLprod(int lprod_id) {
		return lpdDao.getLprod(lprod_id);
	}
	
	public String makePageNavi(int page, int pageSize, int total){
		int cnt = total / pageSize;
		int left = total % pageSize;
		
		if(left >0){
			cnt ++;
		}
		
		StringBuffer navi = new StringBuffer();
		int prev = page ==1 ? 1 : page-1;
		int next = cnt;
		navi.append("<li><a href=\"/lprodServlet?page="+prev+"&pageSize="+pageSize+"\" aria-label=\"Previous\"><span aria-hidden=\"true\">&laquo;</span></a> </li>");
		for(int i =1; i <cnt+1 ; i++){
			String activeClass="";
			
			if(i == page){
				activeClass = "class=\"active\"";
				navi.append("<li "+activeClass+"><a href=\"/lprodServlet?page="+i+"&pageSize="+pageSize+"\">"+i+"</a></li>");
			}else{
				navi.append("<li><a href=\"/lprodServlet?page="+i+"&pageSize="+pageSize+"\">"+i+"</a></li>");
			}
			next = cnt;
		}
		navi.append("<li><a href=\"/lprodServlet?page="+next+"&pageSize="+pageSize+"\" aria-label=\"Next\"><span aria-hidden=\"true\">&raquo;</span></a></li>");
		
		return navi.toString();
	}
}
