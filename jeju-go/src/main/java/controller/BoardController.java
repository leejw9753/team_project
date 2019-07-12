package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("board")
public class BoardController {
	@RequestMapping("notice")
	public ModelAndView notice() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
