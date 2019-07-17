package controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.JejuService;
import logic.User;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private JejuService service;

	@RequestMapping("*")
	public ModelAndView Home() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

	@PostMapping("userEntry")
	public ModelAndView userEntry(@Valid User user, BindingResult bindResult) {
		ModelAndView mav = new ModelAndView();
		if (bindResult.hasErrors()) {
			mav.getModel().putAll(bindResult.getModel());
			System.out.println(bindResult.toString());
			return mav;
		}
		try {
			service.userCreate(user);
			mav.setViewName("redirect:main.jeju");
			mav.addObject("user", user);
		} catch (DataIntegrityViolationException e) {
			bindResult.reject("error.duplicate.user");
		}
		return mav;
	}

	@PostMapping("login")
	public ModelAndView login(@Valid User user, BindingResult bindResult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
//		if (bindResult.hasErrors()) {
//			bindResult.reject("error.input.user");
//			mav.getModel().putAll(bindResult.getModel());
//			return mav;
//		}
		try {
			User dbUser = service.userSelect(user.getUserid());
			if(dbUser==null) {
				mav.addObject("msg","아이디를 다시 입력해주세요");
				mav.addObject("url","main.jeju");
				mav.setViewName("../alert");
				return mav;
			}
			else if (!dbUser.getPassword().equals(service.messageDigest(user.getPassword()))) {
				bindResult.reject("error.login.password");
				return mav;
			} else {
				session.setAttribute("login", dbUser);
				mav.setViewName("redirect:main.jeju");
			}
		} catch (EmptyResultDataAccessException e) {
			e.printStackTrace();
			bindResult.reject("error.login.id");
		}
		return mav;
	}
	
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.invalidate();
		mav.setViewName("redirect:main.jeju");
		return mav;
	}

}