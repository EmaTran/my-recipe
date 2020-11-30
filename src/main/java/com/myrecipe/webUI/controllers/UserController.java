package com.myrecipe.webUI.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping
public class UserController {

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = {"user/login", "/login"},method=RequestMethod.GET)
    public String showLogin() {
        // Logic here
        //Suzuka
        return "user/login";
    }

    @RequestMapping(value = {"user/login", "/login"}, method = RequestMethod.POST)
   //Suzuka
    public String handleUserLogin(ModelMap model,
                                  @RequestParam String userName,
                                  @RequestParam String password,
                                  @RequestParam String subject){
        if(!loginService.validateUser(userName, password)){
            model.put("errorMessage", "Invalid Credentials");
            return "user/login";
        }
        model.put("name", userName);
    //    model.addAttribute("todos", service.retrieveTodos(userName));
        return "user/login";
    }

    @RequestMapping(value = {"user/search", "/search"}, method = RequestMethod.GET)
    public String showSearchPage(ModelMap model) {
        String user = (String) model.get("user");
    //    model.addAttribute("" );
        return "user/search";
    }

    @RequestMapping(value = {"user/search", "/search"}, method = RequestMethod.POST)
    public String ReturnSearchPage() {
        // Logic here

        //Kunal code
        return "user/search";

    }


    @RequestMapping(value = {"recipeList", "user/recipeList"}, method = RequestMethod.GET)
    public String recipeListPage() {
        // Logic here
        //Suzuka
        return "user/recipeList";
    }

    @RequestMapping(value = {"recipeList", "user/recipeList"}, method = RequestMethod.POST)
    public String returnRecipeListPage() {
        // Logic here
        //Suzuka
        return "user/recipeList";
    }


    @RequestMapping(value ={"/register", "/user/register"}, method = RequestMethod.GET)
    public String register() {
        // Logic here
        //Chau code
        return "user/register";
    }

    @RequestMapping(value = {"/register", "/user/register"}, method = RequestMethod.POST)
    public String returnRegister() {
        // Logic here
        //Suzuka
        return "user/register";
    }


    @RequestMapping(value = {"/recipePage", "user/recipePage"}, method = RequestMethod.GET)
    public String recipePage() {

        // Logic here
        //Suzuka code

        return "user/recipePage";
    }

    @RequestMapping(value = {"/recipePage", "user/recipePage"}, method = RequestMethod.POST)
    public String returnRecipePage() {

        // Logic here

        return "user/recipePage";
    }

    @RequestMapping(value = {"myCart", "user/myCart"}, method = RequestMethod.GET)
    public String myCart() {

        // Logic here
        //Aryan code

        return "user/myCart";
    }

    @RequestMapping(value = {"myCart", "user/myCart"}, method = RequestMethod.POST)
    public String returnMyCart() {

        // Logic here
        //Aryan code

        return "user/myCart";
    }

}
