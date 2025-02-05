package com.java.controller;

import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
// 모든 URL 링크는 Controller로 들어온다.
public class FController {
	
	@Autowired
	HttpSession session;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		// @Autowired 로 설정하면 객체생성도 알아서 해준다.
		// HttpSession session = request.getSession();
		System.out.println("Get 방식");
		return "login";
	}
	
	@PostMapping("doLogin")
	public String doLogin(HttpServletRequest request) {
		System.out.println("Post 방식");
		session.setAttribute("session_id", "aaa");
		return "index";
	}
	
	@GetMapping("/logout")
	public String logout() {
		session.invalidate(); // 섹션삭제
		return "logout";
	}
	
}
