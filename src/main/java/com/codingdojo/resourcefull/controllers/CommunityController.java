package com.codingdojo.resourcefull.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.resourcefull.models.User;
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
	public String create() {
		return "create.jsp";
	}
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

}


