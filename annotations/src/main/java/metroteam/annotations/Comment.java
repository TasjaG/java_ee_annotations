package metroteam.annotations;

import org.springframework.stereotype.Repository;

/** One of the comment stored inside a MySQL table of comments */
public interface Comment {
	public String getComment();
	public void setComment(String comment);
	public int getUserID();
	public void setUserID();
	public int getCommentID();
	public void setCommentID();
	public int getStationID();
	public void setStationID();
}
