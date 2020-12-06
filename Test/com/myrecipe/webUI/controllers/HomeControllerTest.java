package com.myrecipe.webUI.controllers;

import com.myrecipe.business.concrete.managers.MenuManager;
import com.myrecipe.business.concrete.managers.UserManager;
import com.myrecipe.entities.User;
import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.DefaultMockMvcBuilder;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = UserController.class)
class HomeControllerTest {

    @Autowired
    private WebApplicationContext wac;
    private MockMvc mockMvc;
    private UserManager _userService;

    @Before
    public void setUp(){
        DefaultMockMvcBuilder builder = MockMvcBuilders.webAppContextSetup(this.wac);
        this.mockMvc = builder.build();
    }

    @Test
    public void testUserController() throws Exception {
        ResultMatcher ok = MockMvcResultMatchers.status().isOk();
        ResultMatcher msg = MockMvcResultMatchers.model()
                .attribute("name", "Alex");

        MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/user/login");
        this.mockMvc.perform(builder)
                .andExpect(ok)
                .andExpect(msg);




    }


    UserController test = new UserController();
    ModelMap modelMap = new ModelMap();



    @Test
    void index() {
    }

    @Test
    void login() {

        modelMap.put("name", "Alex");
        modelMap.put("password", "alex");


    //        test.returnLogin();

        //List<User> userData = _userService.getAll();


        assertEquals("home/index", test.returnLogin());

    }
}