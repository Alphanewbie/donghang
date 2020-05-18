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

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class upsoDAO {

	@Autowired
	SqlSession session = null;
	
//	@Autowired
//	RConnection rc = null;

	public List<BusinessVO> upsoSearch(SearchVO keyword) {
		
		List<BusinessVO> list = new ArrayList<BusinessVO>();
		String statement = "resource.UpsoMapper.searchUpso";
//		System.out.print(keyword.getUpso_nm()+"/ happy  /" + keyword.getSite_addr());
		list = session.selectList(statement, keyword);		

		if(list.size()<=0)
			return null;
		
		return list;
	}
	
	public List<BusinessVO> upsoSearch(String keyword) {
		
		List<BusinessVO> list = new ArrayList<BusinessVO>();
		String statement = "resource.UpsoMapper.searchUpsoone";
//		System.out.print(keyword.getUpso_nm()+"/ happy  /" + keyword.getSite_addr());
		list = session.selectList(statement, keyword);
		
		if(list.size()<=0)
			return null;

		return list;
	}

	public void getgeocording(BusinessVO vo) {
		
	}
	
	public List<SearchVO> upsoSimular(String keyword) {
		List<SearchVO> list = new ArrayList<SearchVO>();
		String statement = "resource.UpsoMapper.simularsearch";
		list = session.selectList(statement, keyword);

		return list;
	}
	
//	class doAction {
//		URL url;
//        HttpURLConnection con=null;
//        Map<String, Object> responseBody = null;
//        
//        doAction() {
//            onPreExecute();
//            doInBackground();
//            onPostExecute();
//        }
//        
//     // API 연결 시작
//        void onPreExecute() {
//            try {
//                url = new URL(openApiURL);
//                con = (HttpURLConnection)url.openConnection();
//                con.setReadTimeout(5000);
//                con.setConnectTimeout(5000);
//                con.setRequestMethod("POST");
//                con.setDoOutput(true);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//
//        // API 연결 끝
//        void onPostExecute() {
//            try {
//                con.disconnect();
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//		
//	}
}
