package com.codingdojo.resourcefull.controllers;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import javax.validation.Valid;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping("/resourcefull")
	public String index() {
		return "index.jsp";
	}
//--------------------------------------------------------------------------------------------
// GET route for rendering home page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/home")
	public String home(Principal principal, Model model, HttpSession session) {
		if(principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
			model.addAttribute("communities", communityService.findAll());
		}
        return "home.jsp";
    }

//--------------------------------------------------------------------------------------------
// GET route for rendering create page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/addcommunity")
	public String create(@ModelAttribute("community") Community community, Model model) {
		model.addAttribute("names", names);
		return "create.jsp";
	}
	
//--------------------------------------------------------------------------------------------
// POST route for CREATING a community 
//--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/community/process", method = RequestMethod.POST)
	public String create(@Valid @ModelAttribute("community") Community community, BindingResult result) {
		if (result.hasErrors()) {
			return "/create.jsp";
		} else {
			communityService.createOrUpdateCommunity(community);
			return "redirect:/resourcefull/home";
		}
	}

	
//--------------------------------------------------------------------------------------------
// GET route for READING details page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/neighborhood/{community_id}")
	public String details(@PathVariable("community_id") Long community_id, Model model) {
		Community comm = communityService.findCommunityById(community_id);
		model.addAttribute("community", comm);
		return "details.jsp";
	}
	
	
//--------------------------------------------------------------------------------------------
// POST route for CREATING a 'resource filled' date
//--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/resourcefull/neighborhood/{community_id}", method = RequestMethod.POST)
	public String create(@PathVariable("community_id") Long community_id , @RequestParam("resource_type") String resource_type) {
		Community comm = communityService.findCommunityById(community_id);
		
		if(resource_type.equals("water")) {
			communityService.filledWater(comm);	
		}
		if(resource_type.equals("food")) {
			communityService.filledFood(comm);
		}
		if(resource_type.equals("hygiene")) {
			communityService.filledHygiene(comm);
		}
		return "redirect:/resourcefull/neighborhood/" + community_id ;
	}
	
	
//--------------------------------------------------------------------------------------------
// GET route for READING details page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/edit/neighborhood/{community_id}")
	public String editOneNeighborhood() {
		return "edit.jsp";
	}

	public CommunityService getCommunityService() {
		return communityService;
	}

	public UserService getUserService() {
		return userService;
	}

}


