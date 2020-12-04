package com.myrecipe.data_access.concrete.hibernate;

import com.myrecipe.core.data_access.hibernate.HibernateEntityRepositoryBase;
import com.myrecipe.data_access.abstrct.IMenuDal;
import com.myrecipe.entities.Menu;

public class HibernateMenuDal extends HibernateEntityRepositoryBase<Menu> implements IMenuDal {
    public HibernateMenuDal(Class<Menu> menuClass) {
        super(menuClass);
    }


}
