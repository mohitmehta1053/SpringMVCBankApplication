package com.bank.beans;

import java.util.ArrayList;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bank.sort.SortByBalance;
import com.bank.sort.SortByFirstName;
import com.bank.sort.SortByLastName;

@Component
public class Customer {
	private int id;
	private String fname;
	private String mname;
	private String lname;
	private String contact;
	private String panNumber;
	private String address;
	private String balance;
	private String accountNumber;
	
	@Autowired
	private SortByBalance sb;
	
	@Autowired
	private SortByFirstName sf;
	
	@Autowired
	private SortByLastName sl;
	
	@Autowired
	private BankAccount ba;
	
	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}


	public BankAccount getBa() {
		return ba;
	}

	public void setBa(BankAccount ba) {
		this.ba = ba;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPanNumber() {
		return panNumber;
	}

	public void setPanNumber(String panNumber) {
		this.panNumber = panNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "Customer [fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", contact=" + contact
				+ ", panNumber=" + panNumber + ", address=" + address + ", balance=" + balance + ", accountNumber="
				+ accountNumber + "]";
	}

	public ArrayList<Customer> sortBy(String sortBy, ArrayList<Customer> list) {
		
		if (sortBy.equals("fname")) {
			Collections.sort(list, sf);
		} else if (sortBy.equals("lname")) {
			Collections.sort(list, sl);
		} else if (sortBy.equals("balance_in_Ascending")) {
			Collections.sort(list, sb);
		}
		else if (sortBy.equals("balance_in_Descending")) {
			Collections.reverse(list);
		}
		return list;
		
	}

	
}
