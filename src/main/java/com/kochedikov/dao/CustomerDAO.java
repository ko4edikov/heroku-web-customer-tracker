package com.kochedikov.dao;

import com.kochedikov.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();

    Customer getCustomer(int id);

    void saveOrUpdateCustomer(Customer customer);

    void deleteCustomer(int id);
}
