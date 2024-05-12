package com.hahnekamp.eternalbackend.customer.logic;

import com.hahnekamp.eternalbackend.customer.entity.CustomerEntity;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;

@Mapper
public interface CustomerMapper {
    CustomerMapper INSTANCE = Mappers.getMapper(CustomerMapper.class);

    @Mapping(target = "id", ignore = true)
    void merge(CustomerEntity customer, @MappingTarget CustomerEntity entity);

    CustomerEntity mapToEntity(Customer customer);

    Customer mapFromEntity(CustomerEntity customerEntity);
}