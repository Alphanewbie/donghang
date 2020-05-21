package info.donghang.donghang;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Dao.upsoDAO;
import Vo.BusinessVO;
import Vo.SearchVO;


@Controller
public class SearchContoller {

	@Autowired
	upsoDAO dao = null;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView home(String keyword) {
		ModelAndView mav = new ModelAndView();
		List<BusinessVO> list = null;
		String[] search = keyword.split("/",2);
//		System.out.println(search[0] +"/here/"+ search[1]);
//		System.out.println(search.length);
		if(search.length ==2) {
			SearchVO test = new SearchVO(search[0].trim(),search[1].trim());
			list = dao.upsoSearch(test);
		}
		else {
//			Ű���� 1��¥�� �˻�
			list = dao.upsoSearch(keyword);
		}
		if(list==null) {
			mav.setViewName("home");
			return mav;
		}
		else if(list.size()==1) {
			mav.addObject("item", list.get(0));
			System.out.print(list.get(0).getSite_addr_rd());
			mav.setViewName("content");
			return mav;
		}
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i).getUpso_nm());
		}

//		upsoSearch(test);
		
		return mav;
	}
	
	@RequestMapping(value = "/simularsearch", method = RequestMethod.GET)
	public @ResponseBody List<String> simularsearch(String keyword) {
		List<SearchVO> list = dao.upsoSimular(keyword);
		List<String> result = new ArrayList<>(); 
		for(int i=0;i<list.size();i++) {
			SearchVO item = list.get(i);
			result.add(item.getUpso_nm()+" / "+item.getSite_addr());
//			System.out.println(item.getUpso_nm()+" / "+item.getSite_addr());
		}
		return result;
	}
	
}
