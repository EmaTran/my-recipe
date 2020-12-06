package com.myrecipe.business.concrete.managers;

import com.myrecipe.entities.User;
import org.junit.jupiter.api.Test;
import org.springframework.ui.ModelMap;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;

import static java.util.Arrays.asList;
import static org.junit.jupiter.api.Assertions.*;

class UserManagerTest {

    UserManager test = new UserManager();
    User user = new User();
    ModelMap modelMap = new ModelMap();

    @Test
    void getAll() {

        List<User> user = new ArrayList<>();

     //   test.add(user);
        assertEquals(user, test.getAll());
    }

    @Test
    void getById() {
    }

    @Test
    void add() {

//        modelMap.put("email", "alex@gmail.com");
//        modelMap.put("fName", "Alex");
//        modelMap.put("lName", "Smith");
//        modelMap.put("name", "alex");
//        modelMap.put("password", "123");

        user.setEmail("alex@gmail.com");
        user.setFirstName("Alex");
        user.setLastName("Smith");
        user.setName("alex");
        user.setPassword("123");

   //     modelMap.addAttribute(user);
        test.add(user);
        assertTrue(true);
    }

    @Test
    void update() {


    }

    @Test
    void deleteById() {
    }
}