package com.sunstudy.saladay.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	// 로그인 창으로 가기
	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "member/loginForm";
	}
	
	@RequestMapping("login.me")
	public void loginMember() {
		
	}
	
	// 회원가입 창으로 가기
	@RequestMapping("joinForm.me")
	public String joinForm() {
		return "member/joinForm";
	}
}
