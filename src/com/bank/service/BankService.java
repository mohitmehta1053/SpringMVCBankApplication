
package com.bank.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bank.beans.Customer;
import com.bank.beans.Product;
import com.bank.model.Account;

@Component
public class BankService {

	@Autowired
	private Account account =new Account();
	boolean b;
	
	
	
	public ArrayList<Product> getAllProduct() {
		// Access DB - either local or through Web Service or through some thrid party DB tool [hibernate/firebase]
		 ArrayList<Product> list = (ArrayList<Product>)account.getAllProduct();
		return list;
	}

	public void insertCustomerDetails(Customer customer) {
	account.insertCustomerDetails(customer);
		
	}

	public ArrayList<Customer> getAllCustomers() {
		
		ArrayList<Customer> list=(ArrayList<Customer>)account.getAllCustomers();
		
		return list;
	}

	public boolean UpdateBalance(Customer customer) {
		b= account.UpdateBalance(customer);
		return b;
		
	}

	public boolean insertintoUsersTable(String username, String password, String authority) {
		
		b=account.insertintoUsersTable( username, password, authority);
		
		// TODO Auto-generated method stub
		return b;
	}

	

}
