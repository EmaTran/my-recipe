package com.myrecipe.data_access.concrete.hibernate;

import com.myrecipe.core.data_access.hibernate.HibernateEntityRepositoryBase;
import com.myrecipe.data_access.abstrct.IStepsDal;
import com.myrecipe.entities.Steps;


public class HibernateStepsDal extends HibernateEntityRepositoryBase<Steps> implements IStepsDal {
    public HibernateStepsDal(Class<Steps> stepsClass) {
        super(stepsClass);
    }


}
