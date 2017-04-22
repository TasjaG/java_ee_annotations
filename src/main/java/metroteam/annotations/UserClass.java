package metroteam.annotations;

public class UserClass {

	private int userID;
	private String userLogin;

	public String getPassword(){
		//Db connection
		return null;
	}

	public void setPassword(String password){};
	public int getID(){
		return userID;
	}
	public void setID(int id){
		this.userID = id;
	}
	/** Login is displayed near the user's comment */
	public String getLogin(){
		return userLogin;
	}
	public void setLogin(String login){
		this.userLogin = login;
	}

}
