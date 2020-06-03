package info.donghang.donghang;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Dao.graphDAO;
import Dao.upsoDAO;
import Vo.ClosedVO;
import Vo.SearchVO;

@Controller
public class GraphController {
	
	@Autowired
	graphDAO dao = null;

	@RequestMapping(value = "/analtest1", method = RequestMethod.GET)
	public String analtest1() {

		System.out.println("�ù�");
		return "analtest1.html";
	}
	
	@RequestMapping(value = "/closerate", method = RequestMethod.GET)
	public ModelAndView closerate() {
		ModelAndView mav = new ModelAndView();
		List<ClosedVO> list = dao.closeRateSearch();
		
		mav.addObject("list", list);
		mav.setViewName("analtest2");
		
		return mav;
	}
}
