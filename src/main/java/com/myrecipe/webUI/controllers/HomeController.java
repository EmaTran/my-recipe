package com.myrecipe.webUI.controllers;

import com.myrecipe.business.abstrct.IUserService;
import com.myrecipe.business.concrete.managers.UserManager;
import com.myrecipe.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HomeController {

    private final IUserService _userService;

    public HomeController() {
        this._userService = new UserManager();
    }

    @RequestMapping(value = {"/", "/home", "/home/index"})
    public String index() {
        return "home/index";
    }

    @RequestMapping(value = "/home/login", method = RequestMethod.POST)
    public String login(
            @RequestParam(name = "userName") String userName,
            @RequestParam(name = "password") String password,
            HttpServletRequest request
    ) {
        List<User> userData = _userService.getAll();
        for (User user : userData) {
            if (user.getName().equals(userName) && user.getPassword().equals(password)) {
                request.getSession().setAttribute("USER_ID", user.getId());
                request.getSession().setAttribute("USER_NAME", user.getName());
                return "redirect:/user/search";
            }
        }
        return "home/index";
    }
}

