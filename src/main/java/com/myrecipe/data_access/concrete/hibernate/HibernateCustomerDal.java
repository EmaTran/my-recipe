package com.myrecipe.data_access.concrete.hibernate;

import com.myrecipe.core.data_access.hibernate.HibernateEntityRepositoryBase;
import com.myrecipe.data_access.abstrct.ICustomerDal;
import com.myrecipe.entities.Customer;
import com.myrecipe.entities.Menu;

public class HibernateCustomerDal extends HibernateEntityRepositoryBase<Customer> implements ICustomerDal {
    public HibernateCustomerDal(Class<Customer> customerClass) {
        super(customerClass);
    }
}
