package com.kochedikov.service;

import com.kochedikov.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    Customer getCustomer(int id);

    void saveOrUpdateCustomer(Customer customer);

    void deleteCustomer(int id);

}
