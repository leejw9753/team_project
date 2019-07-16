package controller;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private ShopService service;
	
	@GetMapping("*")
	public String form(Model model) {
		model.addAttribute(new User());
		return null;
	}
	@PostMapping("userEntry")
	public ModelAndView userEntry(@Valid User user, BindingResult bindResult) {
		ModelAndView mav = new ModelAndView();
			if(bindResult.hasErrors()) {
				mav.getModel().putAll(bindResult.getModel());
				return mav;
			}
			try {
				service.userCreate(user);
				mav.setViewName("user/login");
				mav.addObject("user",user);
			} catch(DataIntegrityViolationException e) {
				bindResult.reject("error.duplicate.user");
			}
			return mav;
	}
	@PostMapping("login")
	public ModelAndView login(@Valid User user, BindingResult bindResult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bindResult.hasErrors()) {
			bindResult.reject("error.input.user");
			mav.getModel().putAll(bindResult.getModel());
			return mav;
		}
		try {
			User dbUser = service.userSelect(user.getUserid());
			if(!dbUser.getPassword().equals(user.getPassword())) {
				bindResult.reject("error.login.password");
				return mav;
			}else {
				session.setAttribute("loginUser", dbUser);
				mav.setViewName("redirect:main.jeju");
			}
		}catch(EmptyResultDataAccessException e) {
			e.printStackTrace();
			bindResult.reject("error.login.id");
		}
		return mav;
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login.jeju";
	}
	@RequestMapping("main")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping(value="/user/userSearch", method = RequestMethod.POST)
	@ResponseBody
	public String userIdSearch(@RequestParam("inputName_1") String username, 
			@RequestParam("inputPhone_1") String phone) {		
		String result = service.get_searchId(username, phone);
		return result;
	}
}