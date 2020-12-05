package com.myrecipe.business.concrete.managers;
import com.myrecipe.business.abstrct.IUserService;
import com.myrecipe.data_access.abstrct.IUserDal;
import com.myrecipe.data_access.concrete.hibernate.HibernateUserDal;
import com.myrecipe.entities.User;

import java.util.List;

public class UserManager implements IUserService {

    private final IUserDal _userDal;

    // TODO Dependency injection
    public UserManager() {
        this._userDal = new HibernateUserDal(User.class);
    }

    @Override
    public List<User> getAll() {
        return _userDal.getAll();
    }

    @Override
    public User getById(int id) {
        return _userDal.getById(id);
    }

    @Override
    public boolean add(User user) {
        return _userDal.add(user);
    }

    @Override
    public boolean update(User user) {
        return _userDal.update(user);
    }

    @Override
    public boolean deleteById(Integer id) {
        return _userDal.delete(getById(id));
    }
}