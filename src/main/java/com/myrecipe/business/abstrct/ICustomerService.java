package com.myrecipe.business.abstrct;

import com.myrecipe.entities.Menu;

import java.util.List;

public interface ICustomerService {

    List<Menu> getAll();

    Menu getById(int id);

    boolean add(Menu menu);

    boolean update(Menu menu);

    boolean deleteById(Integer id);
}
