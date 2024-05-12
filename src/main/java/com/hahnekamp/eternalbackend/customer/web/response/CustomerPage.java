package com.hahnekamp.eternalbackend.customer.web.response;

import com.hahnekamp.eternalbackend.customer.logic.Customer;

import java.util.List;

public record CustomerPage(List<Customer> content, Integer totalPages) {}