package com.businessbank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.businessbank.model.BankDetails;
import com.businessbank.service.BankServiceImp;

import ch.qos.logback.core.model.Model;

@Controller
public class BusinessBankController {
	
	@Autowired
	private BankServiceImp imp;
  
	@RequestMapping("/")
	public String IndexPage() {
		return "index";
	}
	
	@RequestMapping("/register")
	public String registerpage() {
		return "registerform";
	}
	
	@PostMapping("/save")
	public String saveDetails(BankDetails details) {
		
		BankDetails bankDetails = imp.save(details);
		
	   if (bankDetails!=null) {
			return "registrationsuccess";
	     }
	    else {
	    	
			return "registrationfailed";
		}
		
	}
	
	@RequestMapping("/login")
	public String login() {
		return "Login";
	}
	
	@PostMapping("/get")
	public String getBankDetails(@RequestParam String email, @RequestParam String password, ModelMap map) {
		
		BankDetails details = imp.getBankDetails(email, password);
				
		 if (details!=null) {
			
			 map.put("detail", details);
			return "loginstatussucces";
		}
		 else {
			 return "IncorrectPassword";
		 }
		
	}
	
	@RequestMapping("/checkbalance/{id}")
	public String getBalance( @PathVariable int id, ModelMap map) {
		
		BankDetails details = imp.getBankBalance(id);
		
		map.put("detail", details);
		return "Balance";
	}

	@RequestMapping("/withdraw/{id}")
	public String withdrawform(@PathVariable int id, ModelMap map) {
		
		BankDetails details = imp.getRecord(id);
		
		map.put("detail", details);
		
		return "withdrawform";
	}
	
	@PostMapping("/withdrawamount/{id}")
	public String withdrawAmount(@PathVariable int id, @RequestParam double amount, @RequestParam String password, ModelMap map ) {
		
		BankDetails withdraw = imp.withdrawAmount(id, amount, password);
		
		if (withdraw!=null) {
			
			map.put("balance", withdraw);
			return "withdrawstatus";
			
		} else {
			
	   return "Transcationfailed";
		}
		
	
	}
	
	
   @RequestMapping("/deposite/{id}")
   public String DepositeForm(@PathVariable int id, ModelMap map) {
	   
	   BankDetails details =imp.getRecord(id);
	   
	   map.put("detail", details);
	   
	   return "Depositeform";
   }
	
	@PostMapping("/depositeamount/{id}")
	public String DepositeAmount(@PathVariable int id, @RequestParam double amount, @RequestParam String password, ModelMap map ) {
		
		BankDetails deposite = imp.DepositeAmount(id, amount, password);
		
		if (deposite!=null) {
			
			map.put("balance", deposite);
			return "depositestatus";
			
		} else {
			
	   return "Transcationfailed";
		}
		
	
	}
	
	
	@RequestMapping("/transfer/{id}")
	public String transferform(@PathVariable int id, ModelMap map) {

		BankDetails details = imp.getRecord(id);
		
		map.put("detail", details);
		
		return "transferamount";
	}
	
	@PostMapping("/tranferamount/{id}")
	public String transferamount(@PathVariable int id, @RequestParam int tid, @RequestParam double amount, @RequestParam String password, ModelMap map) {
		
		BankDetails details = imp.transferAmount(id, tid, amount, password);
		
	       if(details!=null) {
	    		map.put("detail", details);
	    	    return "transferstatus";
	       }
	       else {
			    return "transferfaild";
		}
	      

	       
	       
		
	}
	
	@RequestMapping("/close/{id}")
	public String closeAccountform(@PathVariable int id, ModelMap map) {

		BankDetails details = imp.getRecord(id);
		
		map.put("detail", details);
		
		return "closeaccountform";
	}
	
	@PostMapping("/closeaccount/{id}")
	public String closeAccount(@PathVariable int id, String password, ModelMap map) {
		
		String status = imp.closeAccount(id, password);
		
		map.put("status", status);
		
		return "closeaccountstatus";
	}
}
