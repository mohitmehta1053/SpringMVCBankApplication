package com.bank.sort;

import java.util.Comparator;

import com.bank.beans.Customer;

public class SortByBalance implements Comparator<Customer> {

	@Override
	public int compare(Customer c1, Customer c2) {
		
		if(Integer.parseInt(c1.getBalance()) < Integer.parseInt(c2.getBalance())) 
			return -1;
		
		if(Integer.parseInt(c1.getBalance()) > Integer.parseInt(c2.getBalance())) 
			return 1;
		else
		return 0;
	}

}
