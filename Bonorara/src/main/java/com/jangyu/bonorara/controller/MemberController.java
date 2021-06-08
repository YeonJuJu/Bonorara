package com.jangyu.bonorara.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jangyu.bonorara.service.TestService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequestMapping( "/member")
@RequiredArgsConstructor
@Controller
@Slf4j
public class MemberController {
	private TestService testService;
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
}
