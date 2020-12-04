package com.myrecipe.webUI.controllers;

import com.myrecipe.business.abstrct.ICustomerService;
import com.myrecipe.business.concrete.managers.CustomerManager;
import com.myrecipe.entities.Menu;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class HomeController {

    private ICustomerService _customerService;

    // TODO Dependency injection
    public HomeController() {
        this._customerService = new CustomerManager();
    }

    @RequestMapping(value = {"/", "/home", "/home/index"})
    public String index(Model model) {
        //List<Menu> menus = new List<Menu>();
        //model.addAttribute("customers", menus);
        return "home/index";
    }

    @RequestMapping(value = "home/create")
    public String create() {
        return "home/createorupdate";
    }

    @RequestMapping(value = "home/update", params = {"id"})
    public String update(@RequestParam(value = "id") int id, Model model) {
        model.addAttribute("customer", _customerService.getById(id));
        return "home/createorupdate";
    }

    @PostMapping(value = "/createorupdate")
    public @ResponseBody
    String ajaxcreateorupdate(HttpServletRequest request) {

//        Menu menu = new Menu();
//        menu.setCategory_id(Integer.parseInt(request.getParameter("categoryID")));
//        menu.setMenuDescription(request.getParameter("menuDescription"));
//        menu.setMenuName(request.getParameter("menuName"));
//        menu.setCourse_number(Integer.parseInt(request.getParameter("courseNumber")));

        String id = request.getParameter("id");

        String msg = "", method;
        if (id == null || id.isEmpty()) {
            //msg = _customerService.add(menu) ? "OK" : "ERROR";
            method = "CREATE";
        } else {
            //menu.setId(Integer.parseInt(id));
            //msg = _customerService.update(menu) ? "OK" : "ERROR";
            method = "UPDATE";
        }
        return String.format("{\"msg\":\"%1s\", \"method\":\"%2s\"}", msg, method);
    }

    @PostMapping(value = "/delete")
    public @ResponseBody
    String ajaxpostdelete(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String msg = _customerService.deleteById(id) ? "OK" : "ERROR";
        return String.format("{\"msg\":\"%1s\"}", msg);
    }

    @RequestMapping(value = "/foos", method = RequestMethod.GET)
    @ResponseBody
    public String chauxinh1() {
        //List<Menu> menus = _customerService.getAll();
//        model.addAttribute("customers", menus);
        return "chauxinh";
    }
}

