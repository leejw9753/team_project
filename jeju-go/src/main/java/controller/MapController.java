package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("map")
public class MapController {
	@RequestMapping("map_test")
	public ModelAndView map() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("map_test2")
	public ModelAndView map2() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
