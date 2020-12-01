package com.myrecipe.business.concrete.managers;

import com.myrecipe.business.abstrct.ICustomerService;
import com.myrecipe.data_access.abstrct.ICustomerDal;
import com.myrecipe.data_access.concrete.hibernate.HibernateCustomerDal;
import com.myrecipe.entities.Customer;
import com.myrecipe.entities.Menu;

import java.util.List;

public class CustomerManager implements ICustomerService {

    private ICustomerDal _customerDal;

    // TODO Dependency injection
    public CustomerManager() {
        this._customerDal = new HibernateCustomerDal(Customer.class);
    }

    @Override
    public List<Customer> getAll() {
        return _customerDal.getAll();
    }

    @Override
    public Customer getById(int id) {
        return _customerDal.getById(id);
    }

    @Override
    public boolean add(Customer customer) {
        return _customerDal.add(customer);
    }

    @Override
    public boolean update(Customer customer) {
        return _customerDal.update(customer);
    }

    @Override
    public boolean deleteById(Integer id) {
        return _customerDal.delete(getById(id));
    }
}