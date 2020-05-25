package Dao;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

import Vo.BusinessVO;
import Vo.SearchVO;

import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class upsoDAO {

    @Autowired
    SqlSession session = null;

    // @Autowired
    // RConnection rc = null;

    public List<BusinessVO> upsoSearch(SearchVO keyword) {

        List<BusinessVO> list = new ArrayList<BusinessVO>();
        String statement = "resource.UpsoMapper.searchUpso";
        // System.out.print(keyword.getUpso_nm()+"/ happy /" + keyword.getSite_addr());
        list = session.selectList(statement, keyword);
        int length = list.size();
        if (length <= 0)
            return null;

        return list;
    }

    public List<BusinessVO> upsoSearch(String keyword) {

        List<BusinessVO> list = new ArrayList<BusinessVO>();
        String statement = "resource.UpsoMapper.searchUpsoone";
        // System.out.print(keyword.getUpso_nm()+"/ happy /" + keyword.getSite_addr());
        list = session.selectList(statement, keyword);

        if (list.size() <= 0)
            return null;

        return list;
    }


    public List<SearchVO> upsoSimular(String keyword) {
        List<SearchVO> list = new ArrayList<SearchVO>();
        String statement = null;
        
//        if(openstatus.equals("all"))
            statement = "resource.UpsoMapper.simularsearch";
//        else if(openstatus.equals("closed"))
//            statement = "resource.UpsoMapper.closedsimularsearch";
//        else
//            statement = "resource.UpsoMapper.simularsearch";
        
        list = session.selectList(statement,keyword);

        return list;
    }


}
