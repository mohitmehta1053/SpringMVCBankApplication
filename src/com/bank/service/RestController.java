package com.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



import com.bank.beans.Cibil;


@org.springframework.web.bind.annotation.RestController
@RequestMapping("rest/cibil/v1")
public class RestController {
	
	@Autowired
	BankService service;
	
	@Autowired
	Cibil cibil;
	
	@RequestMapping(path="/fetch/{panNumber}", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Cibil showCibil(@PathVariable("panNumber") String panNumber)
	{
		cibil.setStatus(true);
		cibil.setScore("8.8");
		return cibil;
		
	}
	
	

}
