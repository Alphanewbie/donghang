package info.donghang.donghang;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GraphController {

	@RequestMapping(value = "/analtest1", method = RequestMethod.GET)
	public String analtest1() {

		System.out.println("�ù�");
		return "analtest1.html";
	}
}
