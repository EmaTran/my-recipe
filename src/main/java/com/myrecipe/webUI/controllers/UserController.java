package com.myrecipe.webUI.controllers;

import com.myrecipe.business.abstrct.IMenuService;
import com.myrecipe.business.abstrct.IRecipeService;
import com.myrecipe.business.abstrct.IUserService;
import com.myrecipe.business.concrete.managers.MenuManager;
import com.myrecipe.business.concrete.managers.RecipeManager;
import com.myrecipe.business.concrete.managers.UserManager;
import com.myrecipe.entities.Menu;
import com.myrecipe.entities.Recipe;
import com.myrecipe.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping
public class UserController {


    private final IMenuService _menuService;
    private final IRecipeService _recipeService;
    private final IUserService _userService;

    public UserController() {
        _menuService = new MenuManager();
        _recipeService = new RecipeManager();
        _userService = new UserManager();
    }

    @RequestMapping(value = {"user/search", "/search"}, method = RequestMethod.GET)
    public String showSearchPage(ModelMap model, HttpServletRequest request) {
        model.addAttribute("userName", request.getSession().getAttribute("USER_NAME"));
        return "user/search";
    }

    @RequestMapping(value = {"user/search/", "/search"}, method = RequestMethod.POST)
    public String ReturnSearchPage(Model model) {
        Menu data = _menuService.getById(1);
        model.addAttribute("menu", data);
        return "user/search";

    }

    @RequestMapping(value = {"recipeList", "user/recipeList"}, method = RequestMethod.GET)
    public String recipeListPage(Model model) {

        List<Recipe> recipeData = _recipeService.getAll();
        model.addAttribute("recipes", recipeData);

        return "user/recipeList";
    }

    @RequestMapping(value = {"recipeList", "user/recipeList"}, method = RequestMethod.POST)
    public String returnRecipeListPage() {
        // Logic here
        return "redirect:recipeList";
    }


    @RequestMapping(value = {"/register", "/user/register"}, method = RequestMethod.GET)
    public String register() {
        return "user/register";
    }

    @RequestMapping(value = {"/registerUser", "/user/register"}, method = RequestMethod.POST)
    public String returnRegister(
            @RequestParam(name = "fName") String fName,
            @RequestParam(name = "lName") String lName,
            @RequestParam(name = "email") String email,
            @RequestParam(name = "password") String password,
            @RequestParam(name = "userName") String userName
    ) {
        User user = new User();
        user.setFirstName(fName);
        user.setLastName(lName);
        user.setEmail(email);
        user.setName(userName);
        user.setPassword(password);
        _userService.add(user);

        return "redirect:/home/";
    }
    @RequestMapping(value = {"recipePage", "user/recipePage"}, params = {"id"})
    public String recipePage(@RequestParam(value = "id") int id, Model model) {
        Recipe data = _recipeService.getById(id);
        model.addAttribute("recipe", data);
        return "user/recipePage";
    }
    @RequestMapping(value = {"recipePage", "user/recipePage"}, method = RequestMethod.POST)
    public String returnRecipePage() {
        return "redirect:myCart";
    }

    @RequestMapping(value = {"myCart", "user/myCart"}, method = RequestMethod.GET)
    public String myCart() {
        return "user/myCart";
    }

    @RequestMapping(value = {"myCart", "user/myCart"}, method = RequestMethod.POST)
    public String returnMyCart() {

        // Logic here
        //Aryan code

        return "user/logout";
    }


    @RequestMapping(value = {"/RecipePage_second", "user/RecipePage_second"}, method = RequestMethod.GET)
    public String RecipePage_second() {

        return "user/RecipePage_second";
    }

    @RequestMapping(value = {"/RecipePage_second", "user/RecipePage_Second"}, method = RequestMethod.POST)
    public String returnRecipePage_second() {

        // Logic here
        //kunal code

        return "user/RecipePage_second";
    }

    @RequestMapping(value = {"/RecipePage_third", "user/RecipePage_third"}, method = RequestMethod.GET)
    public String RecipePage_third() {

        return "user/RecipePage_third";
    }

    @RequestMapping(value = {"/RecipePage_third", "user/RecipePage_third"}, method = RequestMethod.POST)
    public String returnRecipePage_third() {

        // Logic here
        //kunal code

        return "user/RecipePage_third";
    }

    @RequestMapping(value = {"/RecipePage_four", "user/RecipePage_four"}, method = RequestMethod.GET)
    public String RecipePage_four() {

        return "user/RecipePage_four";
    }

    @RequestMapping(value = {"/RecipePage_four", "user/RecipePage_four"}, method = RequestMethod.POST)
    public String returnRecipePage_four() {

        // Logic here
        //kunal code

        return "user/RecipePage_four";
    }

    @RequestMapping(value = {"/RecipePage_five", "user/RecipePage_five"}, method = RequestMethod.GET)
    public String RecipePage_five() {

        return "user/RecipePage_five";
    }

    @RequestMapping(value = {"/RecipePage_five", "user/RecipePage_five"}, method = RequestMethod.POST)
    public String returnRecipePage_five() {

        // Logic here
        //kunal code

        return "user/RecipePage_five";
    }

    @RequestMapping(value = {"/logout", "user/logout"}, method = RequestMethod.GET)
    public String returnLogin() {
        return "home/index";
    }
}
