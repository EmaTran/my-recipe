package com.myrecipe.business.abstrct;


import com.myrecipe.entities.User;

import java.util.List;

public interface IUserService {
    List<User> getAll();

    User getById(int id);

    boolean add(User user);

    boolean update(User user);

    boolean deleteById(Integer id);
}
