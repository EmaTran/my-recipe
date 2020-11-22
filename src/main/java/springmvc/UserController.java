package springmvc;

import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping
public class UserController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin() {
        // Logic here
        //Suzuka
        return "login";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search() {
        // Logic here
        //Suzuka
        return "search";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        // Logic here
        //Suzuka
        return "register";
    }

    @RequestMapping(value = "/recipePage", method = RequestMethod.GET)
    public String recipePage() {

        // Logic here
        //Suzuka

        return "recipePage";
    }

    @RequestMapping(value = "/myCart", method = RequestMethod.GET)
    public String myCart() {

        // Logic here
        //Suzuka


        return "myCart";
    }

}
