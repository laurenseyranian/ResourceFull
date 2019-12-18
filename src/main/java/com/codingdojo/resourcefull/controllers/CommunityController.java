package com.codingdojo.resourcefull.controllers;

import java.security.Principal;

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
	
	@RequestMapping("/resourcefull")
	public String index() {
		return "index.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for READING USER home page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/home")
	public String home(Principal principal, Model model, HttpSession session) {
		if(principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
		}
        return "home.jsp";
    }
//--------------------------------------------------------------------------------------------
// GET route for READING create page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/add/neighborhood")
	public String addNeighborhood() {
		return "create.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for READING details page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/neighborhood")
	public String readAllNeighborhoods() {
		return "details.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for READING details page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/edit/neighborhood/{community_id}")
	public String editOneNeighborhood() {
		return "edit.jsp";
	}

}


