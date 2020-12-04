package com.myrecipe.webUI.controllers;

import com.myrecipe.business.abstrct.ICustomerService;
import com.myrecipe.business.abstrct.IMenuService;
import com.myrecipe.business.abstrct.IUserService;
import com.myrecipe.business.concrete.managers.CustomerManager;
import com.myrecipe.business.concrete.managers.MenuManager;
import com.myrecipe.business.concrete.managers.UserManager;
import com.myrecipe.entities.Menu;
import com.myrecipe.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping
public class UserController {


    private IMenuService _menuService;
    private IUserService _userService;

    // TODO Dependency injection
    public UserController() {
        _menuService = new MenuManager();
        _userService = new UserManager();
    }

    @RequestMapping(value = {"user/login", "/login"}, method = RequestMethod.GET)
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
                                  @RequestParam String subject) {
        return "OK";
    }


    @RequestMapping(value = {"user/search", "/search"}, method = RequestMethod.GET)
    public String showSearchPage(ModelMap model) {
        String user = (String) model.get("user");
        //    model.addAttribute("" );
        return "user/search";
    }

    @RequestMapping(value = {"user/search/", "/search"}, method = RequestMethod.POST)
    public String ReturnSearchPage(Model model) {
        // Logic here
        Menu data = _menuService.getById(1);
        model.addAttribute("menu", data);
        //Kunal code
        return "user/search";

    }

    @RequestMapping(value = {"recipeList", "user/recipeList"}, method = RequestMethod.GET)
    public String recipeListPage(Model model) {
        // Logic here
        //Suzuka

        Menu newMenu = new Menu();

        newMenu.setMenuDescription("This new menu");
        newMenu.setCourseNumber(1);
        newMenu.setMenuName("Menu name");
        newMenu.setCategoryId(1);

        _menuService.add(newMenu);

        return "user/recipeList";
    }

    @RequestMapping(value = {"recipeList", "user/recipeList"}, method = RequestMethod.POST)
    public String returnRecipeListPage() {
        // Logic here
        //Suzuka
        return "user/recipeList";
    }


    @RequestMapping(value = {"/register", "/user/register"}, method = RequestMethod.GET)
    public String register() {
        // Logic here
        //Chau code
        return "user/register";
    }

    @RequestMapping(value = {"/register", "/user/register"}, method = RequestMethod.POST)
    public String returnRegister(
            ModelMap model,
            @RequestParam String first, @RequestParam String last,
            @RequestParam String email, @RequestParam int phone,
            @RequestParam String userName, @RequestParam String password
    ) {
        // Logic here
        //Suzuka
        User user = new User();
        user.setFirstName(model.get("fname").toString());
        user.setLastName(model.get("lName").toString());
        user.setEmail(model.get("email").toString());
        user.setName(model.get("userName").toString());
        user.setPassword(model.get("password").toString());

        _userService.add(user);
        return "user/search";
    }


    @RequestMapping(value = {"/recipePage", "user/recipePage"}, method = RequestMethod.GET)
    public String recipePage(Model model) {

        // Logic here
        // kunal code

        List<Menu> menuData = _menuService.getAll();
        model.addAttribute("menus", menuData);

        return "user/recipePage";
    }

    @RequestMapping(value = {"/recipePage", "user/recipePage"}, method = RequestMethod.POST)
    public String returnRecipePage() {

        // Logic here
        //kunal code

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

}
