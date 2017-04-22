package metroteam.annotations;

import org.springframework.stereotype.Service;

@Service
public interface RandomAdvice {

	/** Gets advice with a randomized ID from the table of advice */
	public String getRandomAdvice();
}
