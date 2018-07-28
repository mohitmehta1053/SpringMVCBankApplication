package com.bank.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.bank.beans.BankAccount;
import com.bank.beans.Customer;
import com.bank.beans.Product;

@Component
public class Account {

	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbc = new NamedParameterJdbcTemplate(dataSource);
	}
	
	
	public List<Product> getAllProduct() {
		return jdbc.query("select * from product",new RowMapper<Product>() {

			@Override
			public Product mapRow(ResultSet rs, int num) throws SQLException {
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setPrice(rs.getString("price"));
				
				
				return p;
			}
			
		});
		
	}


	public void insertCustomerDetails(Customer customer) {
		
		
		MapSqlParameterSource map=new MapSqlParameterSource();
		map.addValue("fname", customer.getFname());
		map.addValue("lname", customer.getLname());
		map.addValue("contact", customer.getContact());
		map.addValue("address", customer.getAddress());
		map.addValue("panNumber", customer.getPanNumber());
		map.addValue("balance", customer.getBa().getMinBalance());
		map.addValue("accountNumber", customer.getAccountNumber());
		
		jdbc.update("insert into customer(fname,lname,contact,address,panNumber,balance,accountNumber) values(:fname,:lname,:contact,:address,:panNumber,:balance,:accountNumber)", map);
		
		
	}


	public List<Customer> getAllCustomers() {
	
		return jdbc.query("select * from customer,customer_has_account as chs,account"
				+ " where customer.id=chs.customer_id AND chs.account_id=account.id", new RowMapper<Customer>() {

			@Override
			public Customer mapRow(ResultSet rs, int num) throws SQLException {
				
				Customer c=new Customer();
				BankAccount ba = new BankAccount();	
				c.setId(rs.getInt("id"));
				c.setFname(rs.getString("fname"));
				c.setLname(rs.getString("lname"));
				c.setContact(rs.getString("contact"));
				c.setAddress(rs.getString("address"));
				c.setPanNumber(rs.getString("panNumber"));
				c.setBalance(rs.getString("balance"));
				ba.setInterestRate(rs.getString("interestRate"));
				ba.setType(rs.getString("type"));
				 ba.setMinBalance(rs.getString("minBalance"));
				 ba.setOverdraft(rs.getString("overdraft"));
				c.setBa(ba);
				c.setAccountNumber(rs.getString("accountNumber"));
				
				return c;
			}
		}); 
		
	}



	public boolean UpdateBalance(Customer customer) {
		
		MapSqlParameterSource map=new MapSqlParameterSource();
		map.addValue("balance", customer.getBalance());
		map.addValue("accountNumber", customer.getAccountNumber());
		int i=jdbc.update("update customer set balance = :balance where accountNumber = :accountNumber", map);
		
		if(i>0)
			return true;
		return false;
		
		
	}


	public boolean insertintoUsersTable(String username, String password, String authority) {
		
		MapSqlParameterSource map=new MapSqlParameterSource();
		map.addValue("username", username);
		map.addValue("password", password);
 		
		int i=jdbc.update("insert into users(username,password) values(:username,:password)", map);
		if(i>0)
		{
			map.addValue("authority", authority);
			int j=jdbc.update("insert into authorities(username,authority) values(:username,:authority)", map);
			if(j>0)
				return true;
		}
		
		
		return false;
	}
	
	
	
//DB access
}
