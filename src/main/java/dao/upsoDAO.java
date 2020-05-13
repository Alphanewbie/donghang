package dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.ListableBeanFactory;
import org.springframework.beans.factory.annotation.Autowired;

import Vo.BusinessVO;

import java.util.ArrayList;
import java.util.List;

public class upsoDAO {

    @Autowired
    SqlSession session = null;

    public List<BusinessVO> search(String... processing) {

//        paging.postCnt = session.selectOne("resource.NewsMapper.selectTotalNewsNum");

        List<BusinessVO> list = new ArrayList<BusinessVO>();
        String statement = "resource.UpsoMapper.searchUpso";

//        list = session.selectList(statement,paging.getPgNum());

//        session.close();

        return list;
    }
}
