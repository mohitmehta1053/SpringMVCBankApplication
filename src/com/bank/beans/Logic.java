package com.bank.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Logic {

	@Autowired
	private Customer c2;
	ArrayList<Customer> list;
	
	
 	public Customer getMatchedAccountNumber(Customer c,ArrayList<Customer> list) {
 		
 		
 		
 			for (Customer customer :list) {
				if(customer.getAccountNumber().equals(c.getAccountNumber()))
				{
					
					c2=customer;
					
				}
			}
 		
				return c2;
	}


	@SuppressWarnings("unchecked")
	public Customer getAccountNumberToUpdateBalanceForDeposit(Object list, String amount, String accountNumber) {
		
		this.list=(ArrayList<Customer>)list;
		
		for (Customer customer :this.list) {
			if(customer.getAccountNumber().equals(accountNumber))
			{
				
				c2=customer;
				c2.setBalance(Integer.toString(Integer.parseInt(amount)+Integer.parseInt(c2.getBalance())));
			}
		}
		
			return c2;
		
	}
	
	@SuppressWarnings("unchecked")
	public Customer getAccountNumberToUpdateBalanceForWithdrawal(Object list, String amount, String accountNumber) {
		
		this.list=(ArrayList<Customer>)list;
		
		for (Customer customer :this.list) {
			if(customer.getAccountNumber().equals(accountNumber))
			{
				
				c2=customer;
				
			}
		}
		
			return c2;
		
	}


	public boolean checkIfBalanceIsSufficientForWithdrawal(Customer customer , String amount) {
		
		
		if(!((Integer.parseInt(customer.getBalance()) - Integer.parseInt(customer.getBa().getMinBalance() )) < (Integer.parseInt(amount))))
		{
			customer.setBalance(Integer.toString(Integer.parseInt(customer.getBalance()) - Integer.parseInt(amount)));
			return true;
		}
		
		return false;
		
	}


	

}
