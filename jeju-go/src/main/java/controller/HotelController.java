package controller;

import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

//import com.opencsv.CSVReader;

//import csv.LatLng;
import logic.Hotel;
import logic.JejuService;
import logic.Room;

@Controller
@RequestMapping("hotel")
public class HotelController {
   @Autowired
   private JejuService service;

   @GetMapping("*")
   public String form(Model model) {
      model.addAttribute(new Hotel());
      return null;
   }

   @PostMapping("register")
   public ModelAndView register(HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
      ModelAndView mav = new ModelAndView();
      service.regist(request, mtfRequest);

      return mav;
   }

   @RequestMapping("hotellist")
   public ModelAndView list() {
      ModelAndView mav = new ModelAndView();
      List<Hotel> list = service.list();
      mav.addObject("list", list);
      return mav;
   }

   @GetMapping("hoteldetail")
   public ModelAndView detail(Integer no,HttpServletRequest request) {
      ModelAndView mav = new ModelAndView("hotel/hoteldetail");
      Hotel h= service.selectOne(no);
      List<Room> r=service.roomList(no);
      mav.addObject("room",r);
      mav.addObject("hotel",h);
      return mav;
   }
   
   @GetMapping("roomregist")
   public ModelAndView register2(Integer no,Model model) {
      ModelAndView mav=new ModelAndView();
      mav.addObject("no",no);
      model.addAttribute(new Room());
      return mav;
   }
   
   @PostMapping("register2")
   public ModelAndView register2(Room room,HttpServletRequest request, MultipartHttpServletRequest mtfRequest) {
      ModelAndView mav = new ModelAndView();
      service.regist2(room,request,mtfRequest);
      
      return mav;
   }
}