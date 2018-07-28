package com.bank.controller;

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.bank.beans.BankAccount;
import com.bank.beans.Cibil;
import com.bank.beans.Customer;
import com.bank.beans.Logic;
import com.bank.service.BankService;

@Controller
public class AdminController {
	
	@Autowired
	private BankService service;
	@Autowired
	private BankAccount ba;
	
	@Autowired
	private Logic logic;
	
	@Autowired
	private Customer customer;
	
	boolean b,b1;
	

	
	 ArrayList<Customer> list;
	
	@RequestMapping("/")
	public ModelAndView showIndex(ModelAndView mav, HttpSession session, Principal principal/*,@RequestParam("username")String username */) 
	{
		/*
		System.out.println(username);
		if(username.equals("admin@gmail.com"))
		{
			mav.addObject("username", username);
			mav.setViewName("CMSDashboard");
			return mav;
		}
		*/
		
		list=service.getAllCustomers();
		session.setAttribute("username", principal.getName());
		session.setAttribute("list", list);
		//ArrayList<Product> list  = service.getAllProduct();
		
		//mav.addObject("list", list);
		mav.setViewName("index");
		return mav;
		
		
	}
	
	@RequestMapping("/AccountCreation")
	public ModelAndView showHome() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("customer", customer);
		mav.setViewName("accountCreate");
		return mav;
	}
	
	@RequestMapping("/Transactions")
	public ModelAndView showTransaction(ModelAndView mav) {
		
		mav.setViewName("transaction");
		return mav;
	}
	
	@RequestMapping("/createCustomer")
	public ModelAndView createCustomer(@ModelAttribute("customer") Customer c) {
		ModelAndView mav = new ModelAndView();
		customer = c;//to save the previous state of the  details of the customer
		mav.addObject("customer", customer);
		mav.addObject("ba", ba);

		mav.setViewName("accountCreate1");
		return mav;
	}
	
	
	
	
	
	@RequestMapping("/LoanProcess")
	public ModelAndView showLoan() {
		ModelAndView mav = new ModelAndView();
		RestTemplate r=new RestTemplate();
		String url="http://localhost:8080/Bank/rest/cibil/v1/fetch/BOI5565";
		Cibil c=r.getForObject(url, Cibil.class);
		
		mav.setViewName("loan");
		mav.addObject("cibil", c);
		return mav;
	}
	

	@RequestMapping("/SearchByAccountNumber")
	public ModelAndView searchByAccountNumber(@ModelAttribute("customer") Customer c) {
		
		ModelAndView mav = new ModelAndView();
		customer=logic.getMatchedAccountNumber(c,list);
		mav.addObject("customer", customer);
		mav.addObject("list", list);
		mav.setViewName("search");
		return mav;
	}
	

	
	@RequestMapping("/CustomerSearch")
	public ModelAndView showSearch(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("search");
		customer.setAccountNumber("");

		
		
		mav.addObject("customer", customer);
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping("/AccountCreated")
	public ModelAndView accountCreated() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("msg", "Account is created");
		mav.addObject("customer",customer);
		
		
		return mav;
	}
	
	@RequestMapping("/createCustomerAccount")
	public String enterIntoDB(@ModelAttribute("ba") BankAccount ba) {
		ModelAndView mav = new ModelAndView();
		
		if(ba.getType().equals("savings"))
		{
			ba.setMinBalance("1000");
			ba.setInterestRate("6.0");
			ba.setOverdraft("0");
			customer.setBa(ba);
		}
		
		if(ba.getType().equals("current"))
		{
			ba.setMinBalance("5000");
			ba.setInterestRate("0.0");
			ba.setOverdraft("5000");
			customer.setBa(ba);
		}
		customer.setAccountNumber(ba.getAccountNumber(customer.getPanNumber()));
		service.insertCustomerDetails(customer);
		
		return "redirect:/AccountCreated";		
	}
	
	
	@RequestMapping("/ProcessDeposit")
	public ModelAndView processDeposit(ModelAndView mav,HttpSession session,@RequestParam("amount")String amount,@RequestParam("accountNumber")String accountNumber) 
	{
		customer=logic.getAccountNumberToUpdateBalanceForDeposit(session.getAttribute("list"),amount,accountNumber);
		b= service.UpdateBalance(customer);
		if(b)
			mav.addObject("msg", "Deposit Successfull");
		else
			mav.addObject("msg", "Deposit Failed");
		
		mav.setViewName("transaction");
		return mav;
	}
	
	@RequestMapping("/ProcessWithdraw")
	public ModelAndView processWithdraw(ModelAndView mav,HttpSession session,@RequestParam("amount")String amount,@RequestParam("accountNumber")String accountNumber) 
	{
		customer=logic.getAccountNumberToUpdateBalanceForWithdrawal(session.getAttribute("list"),amount,accountNumber);
		
		 b1=logic.checkIfBalanceIsSufficientForWithdrawal(customer,amount);
		
		 if(b1)
		 {
			 b= service.UpdateBalance(customer);
			 if(b)
			 {
				 mav.addObject("msg", "Withdrawal is successfull");
			 }
		 }
		 else
			 mav.addObject("msg", "Amount to withdraw is insufficient");
		

		mav.setViewName("transaction");
		return mav;
	}
	
	
	@RequestMapping("/login")
	public ModelAndView showLogin(ModelAndView mav) {
		
	
			mav.setViewName("login");
			return mav;
		
		
	}
	
	@RequestMapping("/login?status=error")
	public ModelAndView loginError(ModelAndView mav) {
		
		mav.addObject("msg1", "Invalid Credentials !! Please Try Again");

		mav.setViewName("login");
		return mav;
	}
	
	
	@RequestMapping("/EditProfile")
	public ModelAndView changeProfile(ModelAndView mav) {
		
		

		mav.setViewName("profile");
		return mav;
	}
	
}
