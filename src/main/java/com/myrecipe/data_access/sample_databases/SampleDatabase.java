package com.myrecipe.data_access.sample_databases;

import com.myrecipe.business.abstrct.ICustomerService;
import com.myrecipe.business.abstrct.IUserService;
import com.myrecipe.business.concrete.managers.CustomerManager;
import com.myrecipe.business.concrete.managers.UserManager;
import com.myrecipe.entities.Customer;
import com.github.javafaker.Faker;
import com.myrecipe.entities.User;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class SampleDatabase {

    public static void initializeDatabase() {

        ICustomerService customerService = new CustomerManager();
        Faker faker = new Faker();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        // Adding Customers
        for (int i = 0; i < 10; i++) {
            Customer customer = new Customer();
            customer.setSalary(faker.number().numberBetween(1000, 3000));
            customer.setFullname(faker.name().fullName());
            customer.setEmail(faker.internet().emailAddress());
            customer.setPhoneNumber(faker.numerify("###-###-####"));
            customer.setDateOfBirth(dateFormat.format(faker.date().birthday()));

            customerService.add(customer);
        }

        // Adding Users
        IUserService userService = new UserManager();
        User newUser1 = new User();
        newUser1.setEmail("user1@email.com");
        newUser1.setFirstName("User1");
        newUser1.setLastName("Test");
        newUser1.setName("user1");
        newUser1.setPassword("123456");

        User newUser2 = new User();
        newUser2.setEmail("user2@email.com");
        newUser2.setFirstName("User2");
        newUser2.setLastName("Test");
        newUser2.setName("user2");
        newUser2.setPassword("123456");

        userService.add(newUser1);
        userService.add(newUser2);

    }
}