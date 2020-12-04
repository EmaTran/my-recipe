package com.myrecipe.business.concrete.managers;

import com.myrecipe.business.abstrct.IMenuService;
import com.myrecipe.data_access.abstrct.IMenuDal;
import com.myrecipe.data_access.concrete.hibernate.HibernateMenuDal;
import com.myrecipe.entities.Menu;

import java.util.List;

public class MenuManager implements IMenuService {

    private IMenuDal _menuDal;

    // TODO Dependency injection
    public MenuManager() {
        this._menuDal = new HibernateMenuDal(Menu.class);
    }

    @Override
    public List<Menu> getAll() {
        return _menuDal.getAll();
    }

    @Override
    public Menu getById(int id) {
        return _menuDal.getById(id);
    }

    @Override
    public boolean add(Menu customer) {
        return _menuDal.add(customer);
    }

    @Override
    public boolean update(Menu customer) {
        return _menuDal.update(customer);
    }

    @Override
    public boolean deleteById(Integer id) {
        return _menuDal.delete(getById(id));
    }
}