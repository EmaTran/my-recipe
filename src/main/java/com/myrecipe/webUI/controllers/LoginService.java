package com.myrecipe.webUI.controllers;

import com.myrecipe.data_access.concrete.hibernate.HibernateCustomerDal;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;
import util.HibernateUtil;

@Service
public class LoginService {

    public boolean validateUser(String userName, String password){

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();

        return userName.equalsIgnoreCase("Joy") && password.equals("dummy");
    } {

    }
}
