package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {
	@RequestMapping("*")
	   public ModelAndView Home() {
	      ModelAndView mav = new ModelAndView();
	      return mav;
	   }
}
