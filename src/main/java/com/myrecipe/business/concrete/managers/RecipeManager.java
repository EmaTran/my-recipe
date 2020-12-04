package com.myrecipe.business.concrete.managers;


import com.myrecipe.business.abstrct.IRecipeService;
import com.myrecipe.business.abstrct.IUserService;

import com.myrecipe.data_access.abstrct.IRecipeDal;
import com.myrecipe.data_access.concrete.hibernate.HibernateRecipeDal;
import com.myrecipe.data_access.concrete.hibernate.HibernateUserDal;
import com.myrecipe.entities.Recipe;


import java.util.List;

public class RecipeManager implements IRecipeService {

    private IRecipeDal _irecipeDal;

    // TODO Dependency injection
    public RecipeManager() {
        this._irecipeDal = new HibernateRecipeDal(Recipe.class);
    }

    @Override
    public List<Recipe> getAll() {
        return _irecipeDal.getAll();
    }

    @Override
    public Recipe getById(int id) {
        return _irecipeDal.getById(id);
    }

    @Override
    public boolean add(Recipe user) {
        return _irecipeDal.add(user);
    }

    @Override
    public boolean update(Recipe user) {
        return _irecipeDal.update(user);
    }

    @Override
    public boolean deleteById(Integer id) {
        return _irecipeDal.delete(getById(id));
    }
}