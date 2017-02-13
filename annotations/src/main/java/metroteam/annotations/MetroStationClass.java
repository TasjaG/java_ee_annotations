package metroteam.annotations;

public class MetroStationClass implements MetroStation {

	private String stationName;
	private int statistic;
	private int stationID;
	private int dangerRating;
	
	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public int getStatistic() {
		return statistic;
	}

	public void setStatistic(int statistic) {
		this.statistic = statistic;
	}

	public int getStationID() {
		return stationID;
	}

	public void setStationID(int stationID) {
		this.stationID = stationID;
		
	}

	public void incrementStatistic() {
		statistic++;
	}

	public int countDangerRating() {
		// TODO 
		return 0;
	}

}
