package metroteam.annotations;

import java.util.LinkedList;

import org.springframework.stereotype.Component;

/** Has a name, id, a thievery statistic, is stored inside a MySQL table of stations */
@Component
public interface MetroStation {
	public String getStationName();
	public String setStationName();
	
	/** Number representing the amount of things stolen on this station. */
	public int getStatistic();
	public void setStatistic(int statistic);
	
	public int getStationID();
	public void setStationID();
	
	/** Callsed after user answers quiz */
	public void incrementStatistic();
	
	/** The rating of thievery on this station in % */
	public int countDangerRating();
}
