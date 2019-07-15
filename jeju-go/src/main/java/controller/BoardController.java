package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Board;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@GetMapping("*")
	public ModelAndView getBoard(Integer No, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Board board = new Board();
		mav.addObject("board", board);
		return mav;
	}
	@RequestMapping("notice")
	public ModelAndView notice() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("write")
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
}
