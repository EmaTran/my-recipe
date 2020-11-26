package springmvc;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

    public boolean validateUser(String userName, String password){
        return userName.equalsIgnoreCase("Joy") && password.equals("dummy");
    } {

    }
}
