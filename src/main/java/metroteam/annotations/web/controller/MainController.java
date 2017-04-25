package metroteam.annotations.web.controller;

import metroteam.annotations.UserClass;
import metroteam.annotations.UserWorker;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

	@RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This is default page!");
		model.setViewName("hello");
		return model;
	}

	@RequestMapping(value = "/register", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView registerPage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("register");
		return model;
	}

	@RequestMapping(value = "/register", method = {RequestMethod.GET, RequestMethod.POST}, params = {"username", "password"})
	public ModelAndView registerPageA(@RequestParam String username, @RequestParam String password) {
		if(!username.isEmpty() && !password.isEmpty()){
			ApplicationContext context = new ClassPathXmlApplicationContext("SpringBeans.xml");
			UserClass user = new UserClass(username, password, 1);
			UserWorker worker = (UserWorker) context.getBean("worker");
			worker.addUser(user);
			ModelAndView model = new ModelAndView("redirect:/login");
			model.addObject("afterRegister", true);
			return model;
		}
		return new ModelAndView("redirect:/register");
	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Login Form - Database Authentication");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/login", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
							  @RequestParam(value = "afterRegister", required = false) boolean afterRegister) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			System.out.print(error);
			model.addObject("error", "Invalid username and password!");
		}
		if(afterRegister){
			model.addObject("afterRegister", true);
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}
	
	//for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();
		
		//check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
		
			model.addObject("username", userDetail.getUsername());
			
		}
		
		model.setViewName("403");
		return model;

	}

}