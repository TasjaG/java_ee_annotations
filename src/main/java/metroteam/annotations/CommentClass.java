package metroteam.annotations;

public class CommentClass {

	private String comment;
	private int id;
	private int stationID;
	private int usedID;
	
	public CommentClass(String comment, int id, int stationID, int usedID) {
		this.comment = comment;
		this.id = id;
		this.stationID = stationID;
		this.usedID = usedID;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getStationID() {
		return stationID;
	}

	public void setStationID(int stationID) {
		this.stationID = stationID;
	}

	public int getUsedID() {
		return usedID;
	}

	public void setUsedID(int usedID) {
		this.usedID = usedID;
	}
}
