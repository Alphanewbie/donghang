package info.donghang.donghang;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Vo.SearchVO;


@Controller
public class SearchContoller {

	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String home(String keyword) {
		
		String[] search = keyword.split(" ",2);
	
		System.out.println(search.length);
		if(search.length ==2) {
			SearchVO test = new SearchVO(search[0],search[1]);
		}
		else {
//			Ű���� 1��¥�� �˻�
		}

//		upsoSearch(test);
		
		return "home";
	}
}
