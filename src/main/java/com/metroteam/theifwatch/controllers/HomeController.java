package com.metroteam.theifwatch.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home () {
		return "home";
	}
	@RequestMapping(value="/info",method = RequestMethod.GET)
	public String info () {
		return "info";
	}
	@RequestMapping(value="/aboutjson",method = RequestMethod.GET)
	public @ResponseBody Map aboutJson () {
		Map about = new HashMap<String, String>();
		about.put("teamname", "MetroTeam");
		about.put("projectName", "ThiefWatch");
		about.put("Year", "2017");
		return about;
	}

	@RequestMapping(value = "/info", method = {RequestMethod.GET, RequestMethod.POST}, params = {"stationID, commentsFrom"})
	public ModelAndView registerPageA(@RequestParam String stationID, @RequestParam String commentsFrom) {
		System.out.print("WAS HERE station");
		ModelAndView m = new ModelAndView("info");
		//m.addObject("stationID", stationID);
		//m.addObject("commentsFrom", commentsFrom);
		return m;
	}

//	@RequestMapping(value = "/info", method = {RequestMethod.GET, RequestMethod.POST}, params = {"commentFromUser"})
//	public ModelAndView registerPageB(@RequestParam String commentFromUser) {
//		System.out.print("WAS HERE comment");
//		ModelAndView m = new ModelAndView("info");
//		m.addObject("commentFromUser", commentFromUser);
//		return m;
//	}

	@RequestMapping(value="/about",method = RequestMethod.GET)
	public String about () {
		return "about";
	}
}
