package com.hahnekamp.eternalbackend.customer.logic;

import java.time.Instant;
import lombok.Data;

@Data
public class Customer {
    private Long id;

    private String firstname;
    private String name;
    private String country;
    private Instant birthdate;
}