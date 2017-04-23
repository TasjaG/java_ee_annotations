package metroteam.annotations;

import org.springframework.stereotype.Component;

@Component
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "I contain the main method!" );
        RandomAdvice1 adv = new RandomAdvice1();
        String advice = adv.getCurrentAdvice();
        System.out.println(advice);
    }
}
