package com.myrecipe.data_access.concrete.hibernate;

import com.myrecipe.core.data_access.hibernate.HibernateEntityRepositoryBase;
import com.myrecipe.data_access.abstrct.ICustomerDal;
import com.myrecipe.entities.Menu;

public class HibernateCustomerDal extends HibernateEntityRepositoryBase<Menu> implements ICustomerDal {
    public HibernateCustomerDal(Class<Menu> customerClass) {
        super(customerClass);
    }
}
