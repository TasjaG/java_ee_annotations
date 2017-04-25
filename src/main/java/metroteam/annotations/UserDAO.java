package metroteam.annotations;

public interface UserDAO {

    UserClass addUser(UserClass user);

    UserClass getUser(int id);
}
