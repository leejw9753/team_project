package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.JejuService;
import logic.User;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private JejuService service;
	
	@RequestMapping("main")
	   public ModelAndView Home() {
	      ModelAndView mav = new ModelAndView();
	      return mav;
	   }
	
	@RequestMapping({"list","deletelist"})
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<User> list = service.userList(request);
		mav.addObject("list", list);
		return mav;
	}
}
