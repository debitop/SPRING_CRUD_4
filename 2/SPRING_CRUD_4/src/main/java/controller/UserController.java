package controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import repository.impl.UserRepositoryImpl;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserRepositoryImpl userRepository;


    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String getAllUsers(Model model) {

        List<User> users = userRepository.getAllUsers();
        model.addAttribute("users", users);
        return "index";
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addUser() {
        return "addUser";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(@RequestParam("name") String name, @RequestParam("isadmin") Boolean isAdmin,
                          @RequestParam("age") Integer age) {
        User user = new User();
        user.setAge(age);
        user.setName(name);
        user.setAdmin(isAdmin);
        user.setCreateDate();
        userRepository.addUser(user);
        return "redirect:/users";
    }

    @RequestMapping (value = "/del", method = RequestMethod.GET)
    public String removeUser(@RequestParam("id") Integer id){
        userRepository.removeUser(id);
        return "redirect:/users";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
        public String editUser(@RequestParam("id") Integer id, Model model){
            model.addAttribute("user", userRepository.getUserById(id));

            return "editUser";
        }
    }
}
