package metroteam.annotations;

import org.springframework.stereotype.Component;

@Component
public interface UserQuiz {

	/** By name of station get station's id and increment it's statistic by one in the table */
	public String changeStatistic();
}