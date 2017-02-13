package metroteam.annotations;

/** Used for logging in - these methods send requests to a MySQL table containing all users */
public interface User {
	public String getPassword();
	public void setPassword(String password);
	public int getID();
	public void setID(int id);
	/** Login is displayed near the user's comment */
	public String getLogin();
	public void setLogin(String login);
}
