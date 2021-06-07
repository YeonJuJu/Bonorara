package com.jangyu.bonorara.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jangyu.bonorara.service.TestService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequestMapping( "/test")
@RequiredArgsConstructor
@Controller
@Slf4j
public class TestController {
	private TestService testService;
}
