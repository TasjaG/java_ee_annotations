package metroteam.annotations;

public class CommentClass implements Comment {

	private String comment;
	private int id;
	private int stationID;
	private int usedID;
	
	public CommentClass(String comment, int id, int stationID, int usedID) {
		super();
		this.comment = comment;
		this.id = id;
		this.stationID = stationID;
		this.usedID = usedID;
	}

	public CommentClass(){
		//TODO
	}
	
	public String getComment() {
		// TODO Auto-generated method stub
		return null;
	}

	public void setComment(String comment) {
		// TODO Auto-generated method stub
		
	}

	public int getUserID() {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setUserID() {
		// TODO Auto-generated method stub
		
	}

	public int getCommentID() {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setCommentID() {
		// TODO Auto-generated method stub
		
	}

	public int getStationID() {
		// TODO Auto-generated method stub
		return 0;
	}

	public void setStationID() {
		// TODO Auto-generated method stub
		
	}

}
