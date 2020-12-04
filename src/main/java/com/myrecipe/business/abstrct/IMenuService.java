package com.myrecipe.business.abstrct;

import com.myrecipe.entities.Menu;

import java.util.List;

public interface IMenuService {
    List<Menu> getAll();

    Menu getById(int id);

    boolean add(Menu customer);

    boolean update(Menu customer);

    boolean deleteById(Integer id);
}
