package metroteam.annotations;

import org.springframework.beans.factory.annotation.Autowired;

public class UserWorker {
    @Autowired
    UserDAO userDAO;

    public UserClass addUser(UserClass user){
        user = userDAO.addUser(user);
        System.out.println(user);
        return user;
    }
}
