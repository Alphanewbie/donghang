package Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Vo.BusinessVO;
import Vo.SearchVO;

import java.util.ArrayList;
import java.util.List;

@Repository
public class upsoDAO {

	@Autowired
	SqlSession session = null;
	
//	@Autowired
//	RConnection rc = null;

	public List<BusinessVO> upsoSearch(SearchVO keyword) {

//        paging.postCnt = session.selectOne("resource.NewsMapper.selectTotalNewsNum");

		List<BusinessVO> list = new ArrayList<BusinessVO>();
		String statement = "resource.UpsoMapper.searchUpso";

		list = session.selectList(statement, keyword);

//        session.close();

		return list;
	}

	public List<BusinessVO> upsoSearch(String keyword) {

//      paging.postCnt = session.selectOne("resource.NewsMapper.selectTotalNewsNum");

		List<BusinessVO> list = new ArrayList<BusinessVO>();
		String statement = "resource.UpsoMapper.searchUpsoone";

//		list = session.selectList(statement, keyword);

//      session.close();

		return list;
	}
	public List<SearchVO> upsoSimular(String keyword) {
		List<SearchVO> list = new ArrayList<SearchVO>();
		String statement = "resource.UpsoMapper.simularsearch";
		list = session.selectList(statement, keyword);

		return list;
	}
}
