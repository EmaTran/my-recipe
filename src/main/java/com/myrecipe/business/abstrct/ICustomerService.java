package com.myrecipe.business.abstrct;

import com.myrecipe.entities.Customer;

import java.util.List;

public interface ICustomerService {

    List<Customer> getAll();

    Customer getById(int id);

    boolean add(Customer customer);

    boolean update(Customer customer);

    boolean deleteById(Integer id);
}
