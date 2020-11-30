package com.myrecipe.data_access.sample_databases;

import com.myrecipe.business.abstrct.ICustomerService;
import com.myrecipe.business.concrete.managers.CustomerManager;
import com.myrecipe.entities.Menu;
import com.github.javafaker.Faker;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class SampleDatabase1 {

    public static void initializeDatabase() {

        ICustomerService customerService = new CustomerManager();
        Faker faker = new Faker();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        // Adding Customers
//        for (int i = 0; i < 10; i++) {
//            Menu menu = new Menu();
//            menu.setMenuName(faker.number().numberBetween(1000, 3000));
//            menu.setMenuDescription(faker.name().fullName());
//            menu.setCategory_id(faker.internet().emailAddress());
//            menu.setCourse_number(faker.numerify("###-###-####"));


//            customerService.add(menu);
        }
    }

