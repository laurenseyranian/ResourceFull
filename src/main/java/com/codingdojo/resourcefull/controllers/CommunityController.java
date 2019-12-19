package com.codingdojo.resourcefull.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
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
	private final String[] names = { "North Oakland", "West Oakland", "Central Oakland", "East Oakland", "Lake Merritt",
			"Oakland Hills" };

	public String[] getNames() {
		return names;
	}

//--------------------------------------------------------------------------------------------
//									Routes
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
// GET route for CREATING a neighborhood 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/add/neighborhood")
	public String getCreateNeighborhood(@ModelAttribute("community") Community community, Model model) {
		model.addAttribute("names", names);
		return "create.jsp";
	}

//--------------------------------------------------------------------------------------------
// POST route for CREATING a neighborhood  
//--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/community/process", method = RequestMethod.POST)
	public String postCreateNeighborhood(@Valid @ModelAttribute("community") Community community, BindingResult result) {
		if (result.hasErrors()) {
			return "/create.jsp";
		} else {
			communityService.createOrUpdateCommunity(community);
			return "redirect:/resourcefull/home";
		}
	}

//--------------------------------------------------------------------------------------------
// POST route for CREATING a 'resource filled' date
//--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/resourcefull/neighborhood/{community_id}", method = RequestMethod.POST)
	public String create(@PathVariable("community_id") Long community_id, @RequestParam("resource_type") String resource_type) {
		Community comm = communityService.findCommunityById(community_id);

		if (resource_type.equals("water")) {
			communityService.filledWater(comm);
		}
		if (resource_type.equals("food")) {
			communityService.filledFood(comm);
		}
		if (resource_type.equals("hygiene")) {
			communityService.filledHygiene(comm);
		}
		return "redirect:/resourcefull/neighborhood/" + community_id;
	}

//--------------------------------------------------------------------------------------------
// GET route for READING index page (User doesn't have to be logged in)
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull")
	public String index() {
		return "index.jsp";
	}

//--------------------------------------------------------------------------------------------
// GET route for READING home page (User must be logged in) 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/home")
	public String home(Principal principal, Model model, HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
			model.addAttribute("communities", communityService.findAll());
		}
		return "home.jsp";
	}

// --------------------------------------------------------------------------------------------
// GET route for READING details of ONE neighborhood
// --------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/neighborhood/{community_id}")
	public String details(@PathVariable("community_id") Long community_id, Principal principal, Model model,
			HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
			model.addAttribute("communities", communityService.findAll());
			Community comm = communityService.findCommunityById(community_id);
			model.addAttribute("community", comm);
		}
		return "details.jsp";
	}
	
//--------------------------------------------------------------------------------------------
//	Get Route for the About page 
//--------------------------------------------------------------------------------------------

@RequestMapping("/resourcefull/about")
public String about() {
return "about.jsp";
}
//--------------------------------------------------------------------------------------------
//Get Route for the Blog page 
//--------------------------------------------------------------------------------------------

@RequestMapping("/resourcefull/blog")
public String blog() {
return "blog.jsp";
}

// ------------------------------------------------------------------------------------------------------
// GET route for UPDATING one neighborhood by ID
// ------------------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/edit/neighborhood/{community_id}")
	public String getUpdateNeighborhood(@PathVariable("community_id") Long community_id, Model model, @ModelAttribute("community") Community community) {
		Community comm = communityService.findCommunityById(community_id);
		model.addAttribute("communities", communityService.findAll());
		return "edit.jsp";
	}

//------------------------------------------------------------------------------------------------------
// POST route for UPDATE one event by ID
//------------------------------------------------------------------------------------------------------    
	@PutMapping("/resourcefull/{community_id}/update")
	public String postUpdateNeighborhood(Model model, @PathVariable("community_id") Long community_id, @Valid @ModelAttribute("community") Community community,
			BindingResult result) {
		if (result.hasErrors()) {
			model.addAttribute("names", names);
			return "edit.jsp";
		} else {
			this.communityService.updateCommunity(community);
			return "redirect:/resourcefull/" + community.getId();
		}
	}

}
