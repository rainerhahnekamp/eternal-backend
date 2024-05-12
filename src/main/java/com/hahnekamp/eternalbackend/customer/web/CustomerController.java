package com.hahnekamp.eternalbackend.customer.web;


import com.hahnekamp.eternalbackend.customer.logic.Customer;
import com.hahnekamp.eternalbackend.customer.entity.CustomerEntity;
import com.hahnekamp.eternalbackend.customer.logic.CustomerMapper;
import com.hahnekamp.eternalbackend.customer.repo.CustomerRepository;
import com.hahnekamp.eternalbackend.customer.web.response.CustomerPage;
import lombok.extern.java.Log;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

import java.util.stream.Collectors;

@RestController()
@RequestMapping("customer")
@Log
public class CustomerController {
    private final CustomerRepository repository;
    private final CustomerMapper mapper;

    public CustomerController(CustomerRepository repository) {
        this.repository = repository;
        this.mapper = CustomerMapper.INSTANCE;
    }

    @GetMapping()
    public CustomerPage findAll(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer pageSize) {
        Page<CustomerEntity> customerEntityPage = this.repository.findAll(PageRequest.of(page, pageSize));
        return new CustomerPage(customerEntityPage.getContent().stream().map(mapper::mapFromEntity).collect(Collectors.toList()), customerEntityPage.getTotalPages());
    }

    @PostMapping("")
    public Customer add(@RequestBody Customer customer) {
        return mapper.mapFromEntity(this.repository.save(mapper.mapToEntity(customer)));
    }

    @PutMapping("")
    public Customer edit(@RequestBody Customer customer) {
        return this.repository.findById(customer.getId()).map(entity -> {
            mapper.merge(mapper.mapToEntity(customer), entity);
            return mapper.mapFromEntity(this.repository.save(entity));
        }).orElseThrow(() -> new RuntimeException("Customer with ID " + customer.getId() + " does not exist"));
    }

    @DeleteMapping("{id}")
    public void delete(@PathVariable("id") Long customerId) {
        this.repository.deleteById(customerId);
    }
}