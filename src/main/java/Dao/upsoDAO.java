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


    public List<SearchVO> upsoSimular(String keyword, String openstatus) {
        List<SearchVO> list = new ArrayList<SearchVO>();
        String statement = null;
        
        if(openstatus.equals("all"))
            statement = "resource.UpsoMapper.simularsearch";
        else if(openstatus.equals("open"))
            statement = "resource.UpsoMapper.simularsearch";
        else
            statement = "resource.UpsoMapper.simularsearch";
        
        list = session.selectList(statement, keyword);

        return list;
    }

    public void getlonlat(String strUrl) {
        try {

            String location = strUrl;

            String addr = "https://dapi.kakao.com/v2/local/search/address.json";

            String apiKey = "KakaoAK 9d6f3a4e1ec12cbe8e0ee2024c6a628e";

            location = URLEncoder.encode(location, "UTF-8");

            String query = "query=" + location;

            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(addr);
            stringBuffer.append("?");
            stringBuffer.append(query);

            System.out.println("stringBuffer.toString() " + stringBuffer.toString());

            URL url = new URL(stringBuffer.toString());

            URLConnection conn = url.openConnection();

            conn.setRequestProperty("Authorization", apiKey);

            BufferedReader rd = null;

            rd = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            StringBuffer docJson = new StringBuffer();

            String line;

            while ((line = rd.readLine()) != null) {
                docJson.append(line);
            }

            if (0 < docJson.toString().length()) {
                System.out.println("docJson    :" + docJson.toString());

            }

            rd.close();
            System.out.print(docJson.toString());
            // JSONObject jsonObject = new JSONObject(docJson.toString());
            JSONObject jsonObject = new JSONObject();
            JSONArray jsonArray = (JSONArray) jsonObject.get("documents");

            JSONObject tempObj = (JSONObject) jsonArray.get(0);

            System.out.println("latitude : " + tempObj.get("y"));
            System.out.println("longitude : " + tempObj.get("x"));

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
