package com.myrecipe.data_access.concrete.hibernate;

import com.myrecipe.core.data_access.hibernate.HibernateEntityRepositoryBase;
import com.myrecipe.data_access.abstrct.IUserDal;
import com.myrecipe.entities.User;

public class HibernateUserDal extends HibernateEntityRepositoryBase<User> implements IUserDal {
    public HibernateUserDal(Class<User> userClass) {
        super(userClass);
    }
}
