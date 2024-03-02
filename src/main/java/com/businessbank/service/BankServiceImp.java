package com.businessbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.businessbank.model.BankDetails;
import com.businessbank.repo.BankRepo;

@Service
public class BankServiceImp implements BankService  {
	
	@Autowired
    private	BankRepo repo;

	@Override
	public BankDetails save(BankDetails details) {
		BankDetails details2 = repo.save(details);
		return details2;
	}

	@Override
	public BankDetails getBankDetails(String email, String password) {
		
		BankDetails details = repo.findByEmail(email);
       
		BankDetails bankDetails = null;
		
		if((details.getEmail().equals(email))&&(details.getPassword().equals(password))) {
			
			bankDetails = details;	
		}
		else {
			bankDetails = null;
		}
		
		   return bankDetails;
	}

	@Override
	public BankDetails getBankBalance(int id) {
		
		BankDetails details = repo.findById(id).get();
		
		return details;
	}
	
	@Override
	public BankDetails getRecord(int id) {
		BankDetails details = repo.findById(id).get();
		return details;
	}
	
	@Override
	public BankDetails withdrawAmount(int id, double amount, String password) {
		BankDetails details = repo.findById(id).get();
		
		 double balance = details.getAmount();
		 
		 double remaingAmount = balance - amount;
		 
		 BankDetails updated = null;
		
		if((details.getPassword().equals(password))&&((details.getAmount())!=0))
		{
			details.setAmount(remaingAmount);
			updated = repo.save(details);
		}
		else {
			 updated = null;
		}	
			
		return updated;

	}

	@Override
	public BankDetails DepositeAmount(int id, double amount, String password) {
		BankDetails details = repo.findById(id).get();
		
		 double balance = details.getAmount();
		 
		 double remaingAmount = balance + amount;
		 
		 BankDetails updated = null;
		
		if(details.getPassword().equals(password))
		{
			details.setAmount(remaingAmount);
			updated = repo.save(details);
		}
		else {
			 updated = null;
		}	
		return updated;
	}

	@Override
	public BankDetails transferAmount(int id, int tid, double amount, String password) {
		
		BankDetails acc = repo.findById(id).orElse(null);
		
		BankDetails tacc = repo.findById(tid).orElse(null);
		
		double account = acc.getAmount();
		
		double transferaccount = tacc.getAmount();
		
		if((acc.getAmount()>=amount)&&(acc.getPassword().equals(password)))
		{
			acc.setAmount(account-amount);
			tacc.setAmount(transferaccount+amount);
			repo.save(acc);
			repo.save(tacc);
		}
		
		return tacc;
	}

	@Override
	public String closeAccount(int id, String password) {
		
		BankDetails details = repo.findById(id).get();
		
		if (details.getPassword().equals(password)) {
			
			details.setAmount(0);
			repo.save(details);
			
			return "Account Closed Successfully";
			
		}
		else {
			return "Account Close Failed Please Check Your Credentials";
		}
	}


	


}
