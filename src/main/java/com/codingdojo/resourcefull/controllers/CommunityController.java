package com.codingdojo.resourcefull.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.resourcefull.models.Community;
import com.codingdojo.resourcefull.services.CommunityService;
import com.codingdojo.resourcefull.services.UserService;

@Controller
public class CommunityController {
// --------------------------------------------------------------------------------------------
// Attributes
// --------------------------------------------------------------------------------------------
	private final CommunityService communityService;
	private final UserService userService;
	// ----------------------------------------------------------------------------------------
	// Constructors
	// ----------------------------------------------------------------------------------------
	public CommunityController(CommunityService communityService, UserService userService) {
		this.communityService = communityService;
		this.userService = userService;
	}
	
//-------------------------------------------------------------------------------------------------------
// Dictionary for all of the states
//-------------------------------------------------------------------------------------------------------
	private final String[] names = { "North Oakland", "West Oakland", "Central Oakland", "East Oakland", "Lake Merritt", "Oakland Hills"};

	public String[] getNames() {
		return names;
	}	
//--------------------------------------------------------------------------------------------
//									Routes
//--------------------------------------------------------------------------------------------
	
	

//--------------------------------------------------------------------------------------------
// GET route for READING index page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull")
	public String index () {
		return "index.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for READING home page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/home")
	public String home() {
		return "home.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for READING create page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/addcommunity")
	public String create(@ModelAttribute("community") Community community) {
		return "create.jsp";
	}
//--------------------------------------------------------------------------------------------
// POST route for CREATING a community 
//--------------------------------------------------------------------------------------------
//	@RequestMapping("/resourcefull/addcommunity")
//	public String create() {
//		return "create.jsp";
//	}
//--------------------------------------------------------------------------------------------
// GET route for READING details page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/community")
	public String details() {
		return "details.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for READING details page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/editcommunity")
	public String edit() {
		return "edit.jsp";
	}



	public CommunityService getCommunityService() {
		return communityService;
	}



	public UserService getUserService() {
		return userService;
	}

}


