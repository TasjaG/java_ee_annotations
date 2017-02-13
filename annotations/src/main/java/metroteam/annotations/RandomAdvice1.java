package metroteam.annotations;

import org.springframework.beans.factory.annotation.Autowired;

public class RandomAdvice1 implements RandomAdvice {

	private String currentAdvice;
	private String[] advice;
	
	public RandomAdvice1 () {
		
	}

	public String getCurrentAdvice() {
		return currentAdvice;
	}

	@Autowired(required=false)
	public void setCurrentAdvice(String currentAdvice) {
		this.currentAdvice = currentAdvice;
	}

	public String[] getAdvice() {
		return advice;
	}

	public void setAdvice(String[] advice) {
		this.advice = advice;
	}
	
}
