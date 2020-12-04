package com.myrecipe.business.abstrct;

import com.myrecipe.entities.Recipe;

import java.util.List;

public interface IRecipeService {
    List<Recipe> getAll();

    Recipe getById(int id);

    boolean add(Recipe customer);

    boolean update(Recipe customer);

    boolean deleteById(Integer id);
}
