package com.mycompany.ourapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/web")
public class WebController {
	@RequestMapping("/memberindex")
	public String memIndex()
	{
		return "redirect:/member/list";
	}
	
	@RequestMapping("/resmanagement")
	public String resmanagement()
	{
		return "/web/resmanagement";
	}
	
	@RequestMapping("/ordermanagement")
	public String ordermanagement()
	{
		return "/web/ordermanagement";
	}
	
	@RequestMapping("/menumanagement")
	public String menumanagement()
	{
		return "/web/menumanagement";
	}
	
	@RequestMapping("/restaurantmanege")
	public String restaurantmanege()
	{
		return "/web/restaurantmanege";
	}
	
	@RequestMapping("/single")
	public String single()
	{
		return "/web/single";
	}
	
	@RequestMapping("/contact")
	public String contact()
	{
		return "/web/contact";
	}
}
