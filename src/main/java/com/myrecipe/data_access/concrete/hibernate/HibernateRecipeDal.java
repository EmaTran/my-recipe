package com.myrecipe.data_access.concrete.hibernate;

import com.myrecipe.core.data_access.hibernate.HibernateEntityRepositoryBase;
import com.myrecipe.data_access.abstrct.IRecipeDal;
import com.myrecipe.entities.Recipe;

public class HibernateRecipeDal extends HibernateEntityRepositoryBase<Recipe> implements IRecipeDal {
    public HibernateRecipeDal(Class<Recipe> recipeClass) {
        super(recipeClass);
    }


}
