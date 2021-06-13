package com.jangyu.bonorara.controller;

import java.sql.Connection;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jangyu.bonorara.mapper.TestMapper;

import lombok.Setter;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Setter(onMethod_ = {@Autowired})
	private DataSource dataSource;
	@Setter(onMethod_ = {@Autowired})
	private TestMapper mapper;

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		 try (Connection con = dataSource.getConnection()) {
			 
	            System.out.println("\nDB연결 성공 !!\n");
	            mapper.selectAll().forEach(testDTO -> System.out.println(testDTO.getTestNo()+" "+testDTO.getTestName()));
	 
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		return "home";
	}
	
}
