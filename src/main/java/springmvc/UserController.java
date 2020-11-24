package springmvc;

import org.springframework.stereotype.Controller;


import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping
public class UserController {

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
    public String handleUserLogin(ModelMap model, @RequestParam String name, @RequestParam String password){
//        if(!loginService.validateUser(name, password)){
//            model.put("errorMessage", "Invalid Credentials");
//            return "login";
//        }
//        model.put("name", name);
//        model.addAttribute("todos", service.retrieveTodos(name));
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
        //Suzuka
        return "/search";
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
