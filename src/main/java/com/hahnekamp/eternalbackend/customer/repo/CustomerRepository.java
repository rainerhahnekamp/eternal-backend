package com.hahnekamp.eternalbackend.customer.repo;

import com.hahnekamp.eternalbackend.customer.entity.CustomerEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository  extends JpaRepository<CustomerEntity, Long>{
}
