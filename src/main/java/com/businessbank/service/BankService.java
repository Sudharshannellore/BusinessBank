package com.businessbank.service;

import com.businessbank.model.BankDetails;

public interface BankService {

	public BankDetails save(BankDetails details);
	public BankDetails getBankDetails(String email, String password);
	public BankDetails getBankBalance(int id);
	public BankDetails getRecord(int id);
	public BankDetails withdrawAmount(int id, double amount, String password);	
	public BankDetails DepositeAmount(int id, double amount, String password);	
	public BankDetails transferAmount(int id, int tid, double amount, String password );
	public String closeAccount(int id, String password);

}


