package com.metroteam.theifwatch.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.metroteam.theifwatch.dao.Comment;
import com.metroteam.theifwatch.dao.CommentService;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;

	@RequestMapping(value="/info",method = {RequestMethod.GET, RequestMethod.POST}, params = {"stationID"})
	public ModelAndView getComments(@RequestParam("stationID") String stationID){
		ModelAndView a = new ModelAndView("info");
		String comments = "";
		List<Comment> commentsO = commentService.getAllCommentsByStation(stationID);
		if(commentsO.isEmpty()){
			comments = "No comments yet";
		}
		else {
			for (int i = 0; i < commentsO.size(); i++) {
				comments = comments + "\n" + i + ") " + commentsO.get(i).getText() + "\n";
			}
		}
		a.addObject("stationID", stationID);
		a.addObject("commentsFrom", comments);
		return a;
	}

	@RequestMapping(value="/info",method = RequestMethod.POST)
	public void addComment(@ModelAttribute Comment comment){
		commentService.addComment(comment);
	}
}
