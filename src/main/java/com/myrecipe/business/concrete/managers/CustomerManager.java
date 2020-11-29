package com.myrecipe.business.concrete.managers;

import com.myrecipe.business.abstrct.ICustomerService;
import com.myrecipe.data_access.abstrct.ICustomerDal;
import com.myrecipe.data_access.concrete.hibernate.HibernateCustomerDal;
import com.myrecipe.entities.Menu;

import java.util.List;

public class CustomerManager implements ICustomerService {

    private ICustomerDal _customerDal;

    // TODO Dependency injection
    public CustomerManager() {
        this._customerDal = new HibernateCustomerDal(Menu.class);
    }

    @Override
    public List<Menu> getAll() {
        return _customerDal.getAll();
    }

    @Override
    public Menu getById(int id) {
        return _customerDal.getById(id);
    }

    @Override
    public boolean add(Menu menu) {
        return _customerDal.add(menu);
    }

    @Override
    public boolean update(Menu menu) {
        return _customerDal.update(menu);
    }

    @Override
    public boolean deleteById(Integer id) {
        return _customerDal.delete(getById(id));
    }
}
