package com.businessbank.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.businessbank.model.BankDetails;
import java.util.List;


@Repository
public interface BankRepo extends JpaRepository<BankDetails, Integer> {
	
      public BankDetails findByEmail(String email);

      
      
      
}
