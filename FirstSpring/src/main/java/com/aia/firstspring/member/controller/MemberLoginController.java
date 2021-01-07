package com.aia.firstspring.member.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aia.firstspring.member.domain.LoginRequest;

@Controller
@RequestMapping(value="/member/login")
public class MemberLoginController {
	//@RequestMapping(value="/member/login", method = RequestMethod.GET)
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getLoginForm() {
		return new ModelAndView("member/loginForm");
	}
	
	//@RequestMapping(value="/member/login", method = RequestMethod.POST)
	@RequestMapping(method = RequestMethod.POST)

	// DispatcherServlet이 login("dittosj", "1234") 이렇게 전달함
	public ModelAndView login(	@RequestParam("uid") String uid, 
								@RequestParam("pw") String pw,
								HttpServletRequest request,
								LoginRequest loginRequest) {
		
		// 사용자의 파라미터 값을 받는 방법 
		// 1. HttpServletRequest 객체를 이용 : HttpServletRequest request
		// 2. @RequestParam(폼의 네임속성) : @RequestParam("uid") String uid
		// 3.커멘트 객체(Beans)를 이용 : LoginRequest loginRequest
		
		System.out.println(loginRequest);
		
		String userId = request.getParameter("uid");
		String userPw = request.getParameter("pw");
		 
		ModelAndView mav = new  ModelAndView();
		mav.setViewName("/member/login");
		mav.addObject("uid", uid);
		mav.addObject("pw", pw);
		mav.addObject("userId", userId);
		mav.addObject("userPw", userPw);
		return mav;
	}

}