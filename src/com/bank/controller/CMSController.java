package com.bank.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bank.beans.Customer;
import com.bank.service.BankService;

@Controller
@RequestMapping("/cms")
public class CMSController {
	
	
	@Autowired
	private BankService service;
	
	ArrayList<Customer> list;
	
	@Autowired
	Customer customer;
	
	boolean b;
	
	@RequestMapping("/dashboard")
	public ModelAndView getDashboard(ModelAndView mav)
	{
		mav.setViewName("CMSDashboard");
		
		return mav;
	}
	
	
	@RequestMapping("/AddUser")
	public ModelAndView showAddUser(ModelAndView mav)
	{
		
		
		mav.setViewName("CMSAddUser");
		
		return mav;
	}
	
	@RequestMapping("/CreateUser")
	public ModelAndView createUser(ModelAndView mav, @RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("authority") String authority)
	{
		
		b=service.insertintoUsersTable(username,password,authority);
		if(b)
			mav.addObject("msg", "User has been successfully added");	
		else
			mav.addObject("msg", "User has not been added");	
			mav.setViewName("CMSDashboard");
		return mav;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/CustomerDetails")
	public ModelAndView getCustomerDetails(ModelAndView mav, HttpSession session )
	{
		 list=(ArrayList<Customer>)session.getAttribute("list");
		 mav.addObject("c", customer);
		mav.addObject("list", list);
		mav.setViewName("CMSCustomerDetails");
		
		return mav;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/SortCustomerDetails")
	public ModelAndView sortCustomerDetails(ModelAndView mav ,@RequestParam("sort") String sortBy,HttpSession session)
	{
		list=(ArrayList<Customer>)session.getAttribute("list");
		list=customer.sortBy(sortBy,list);
		mav.setViewName("CMSCustomerDetails");
		
		return mav;
	}
	
	

}
