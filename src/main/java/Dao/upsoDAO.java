package Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;

import Vo.BusinessVO;
import Vo.SearchVO;

import java.util.ArrayList;
import java.util.List;

public class upsoDAO {

    @Autowired
    SqlSession session = null;

    public List<BusinessVO> upsoSearch(SearchVO keyword) {

//        paging.postCnt = session.selectOne("resource.NewsMapper.selectTotalNewsNum");

        List<BusinessVO> list = new ArrayList<BusinessVO>();
        String statement = "resource.UpsoMapper.searchUpso";

        list = session.selectList(statement,keyword);

//        session.close();

        return list;
    }
    
    public List<BusinessVO> upsoSearch(String keyword) {

//      paging.postCnt = session.selectOne("resource.NewsMapper.selectTotalNewsNum");

      List<BusinessVO> list = new ArrayList<BusinessVO>();
      String statement = "resource.UpsoMapper.searchUpsoone";

      list = session.selectList(statement,keyword);

//      session.close();

      return list;
  }
}
