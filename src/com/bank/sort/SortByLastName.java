package com.bank.sort;

import java.util.Comparator;

import com.bank.beans.Customer;

public class SortByLastName  implements Comparator<Customer>{

	@Override
	public int compare(Customer c1, Customer c2) {
		
		if((int)(c1.getLname().charAt(0)) < (int)(c2.getLname().charAt(0)))
			return -1;
		if((int)(c1.getLname().charAt(0)) > (int)(c2.getLname().charAt(0)))
			return 1;
		else
			
		return 0;
		
		
	}

}
