package com.myrecipe.business.abstrct;

import com.myrecipe.entities.Steps;

import java.util.List;

public interface IStepsService {
    List<Steps> getAll();

    Steps getById(int id);

    boolean add(Steps customer);

    boolean update(Steps customer);

    boolean deleteById(Integer id);
}
