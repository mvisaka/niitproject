package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartItemDAO;
import com.niit.dao.ProductDAO;

@Controller
public class HomeController
{
	@Autowired
	private ProductDAO productDao;	
	   @Autowired
		private CartItemDAO cartItemDao;
	
	
	public HomeController()
	{
		System.out.println("HomeController bean is instantiated");
	}
	//http://localhost:8080/project1frontend/home - This request will be handled
	//by this handler method homePage()
	@RequestMapping(value="/")
	public String homePage(HttpSession session){
		session.setAttribute("categories",productDao.getAllCategories());
		return "Home";
	}
	@RequestMapping(value="/AboutUs")
	public String aboutusPage(){
		return "AboutUs";
	}
	@RequestMapping(value="/Login")
	public String login(){
		return "Login";
	}
	@RequestMapping(value="/loginerror")
	public String loginFailed(Model model){
		model.addAttribute("error","Invalid credentials..");
		return "Login";
	}
	@RequestMapping(value="/logout")
	public String logout(Model model){
		model.addAttribute("msg","Loggedout successfully...");
		return "Login";
	}
	}
