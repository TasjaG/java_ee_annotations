package metroteam.annotations;

import org.springframework.stereotype.Repository;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

    @PersistenceContext
    private EntityManager em;

    public UserClass addUser(UserClass user) {
        em.persist(user);
        em.persist(new UserRole(user.getUsername(), "ROLE_ADMIN"));
        return user;
    }

    public UserClass getUser(int id) {
        return em.find(UserClass.class,id);
    }
}
