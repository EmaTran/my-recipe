package com.myrecipe.business.abstrct;


import com.myrecipe.entities.Steps;

import java.util.List;

public interface IStepService {
    List<Steps> getAll();

    Steps getById(int id);

    boolean add(Steps user);

    boolean update(Steps user);

    boolean deleteById(Integer id);
}
