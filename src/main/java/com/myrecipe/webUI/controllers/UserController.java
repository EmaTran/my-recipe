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
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin() {
        // Logic here
        //Suzuka
        return "login";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String returnAfterLogin(){
        //    return "/WEB-INF/list-todos.jsp";
        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
   //Suzuka
    public String handleUserLogin(ModelMap model, @RequestParam String userName, @RequestParam String password){
        if(!loginService.validateUser(userName, password)){
            model.put("errorMessage", "Invalid Credentials");
            return "login";
        }
        model.put("name", userName);
    //    model.addAttribute("todos", service.retrieveTodos(userName));
        return "login";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String showSearchPage(ModelMap model) {
        String user = (String) model.get("user");
    //    model.addAttribute("" );
        return "/search";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String ReturnSearchPage() {
        // Logic here

        //Kunal code
        return "/search";



    }


    @RequestMapping(value = "/recipeList", method = RequestMethod.GET)
    public String recipeListPage() {
        // Logic here
        //Suzuka
        return "recipeList";
    }

    @RequestMapping(value = "/recipeList", method = RequestMethod.POST)
    public String returnRecipeListPage() {
        // Logic here
        //Suzuka
        return "recipeList";
    }


    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        // Logic here
        //Chau code
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String returnRegister() {
        // Logic here
        //Suzuka
        return "register";
    }




    @RequestMapping(value = "/recipePage", method = RequestMethod.GET)
    public String recipePage() {

        // Logic here
        //Suzuka code

        return "recipePage";
    }

    @RequestMapping(value = "/myCart", method = RequestMethod.GET)
    public String myCart() {

        // Logic here
        //Aryan code


        return "myCart";
    }

}
