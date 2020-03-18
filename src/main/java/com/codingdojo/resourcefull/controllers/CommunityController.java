package com.codingdojo.resourcefull.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.resourcefull.models.Community;
import com.codingdojo.resourcefull.models.Message;
import com.codingdojo.resourcefull.models.User;
import com.codingdojo.resourcefull.services.CommunityService;
import com.codingdojo.resourcefull.services.UserService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class CommunityController {
// --------------------------------------------------------------------------------------------
// Attributes
// --------------------------------------------------------------------------------------------
	private final CommunityService communityService;
	private final UserService userService;

	@Autowired
    private Gson gson;
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
// GET route for CREATING a neighborhood (User must be logged in)
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
	public String postCreateNeighborhood(@Valid @ModelAttribute("community") Community community,
			BindingResult result) {
		if (result.hasErrors()) {
			return "/create.jsp";
		} else {
			communityService.createOrUpdateCommunity(community);
			return "redirect:/resourcefull/portal";
		}
	}

//--------------------------------------------------------------------------------------------
// POST route for CREATING a 'resource filled' date
//--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/resourcefull/neighborhood/{community_id}", method = RequestMethod.POST)
	public String create(@PathVariable("community_id") Long community_id,
			@RequestParam("resource_type") String resource_type) {
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

// -------------------------------------------------------------------------------------------------------
// POST route for CREATING a new comment
// -------------------------------------------------------------------------------------------------------
	@PostMapping(value = "/comment/create")
	public String createComment(@Valid @ModelAttribute("comment") Message message, BindingResult result, Model model,
			Principal principal) {
		String username = principal.getName();
		User user = userService.findByUsername(username);
		model.addAttribute("currentUser", user);
		model.addAttribute("user", user);
		communityService.createMessage(message);
		System.out.println("made it here");
		return "redirect:/resourcefull/neighborhood/" + message.getCommunity().getId();
	}

//--------------------------------------------------------------------------------------------
// GET route for READING home page (User doesn't have to be logged in)
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull")
	public String index(Principal principal, Model model, HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
		}
		return "home.jsp";
	}

//--------------------------------------------------------------------------------------------
// GET route for READING portal page (User must be logged in) 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/my-portal")
	public String home(Principal principal, Model model, HttpSession session) {
		Gson gsonBuilder = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();

		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
			model.addAttribute("communities", communityService.findAll());
			List<Community> comms = communityService.findAll();
	        model.addAttribute("communities", comms);
	        model.addAttribute("data", gsonBuilder.toJson(comms));
		}
		return "portal.jsp";
	}

// --------------------------------------------------------------------------------------------
// GET route for READING details of ONE neighborhood (User must be logged in)
// --------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/neighborhood/{community_id}")
	public String details(@PathVariable("community_id") Long community_id, Principal principal, Model model,
			HttpSession session, @ModelAttribute("comment") Message message) {
		Gson gsonBuilder = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();

		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
			model.addAttribute("communities", communityService.findAll());
			Community comm = communityService.findCommunityById(community_id);
			model.addAttribute("community", comm);
	        model.addAttribute("data", gsonBuilder.toJson(comm));
		}
		return "readone.jsp";
	}

//--------------------------------------------------------------------------------------------
//	GET Route for READING get involved page (User doesn't have to be logged in)
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/get-involved")
	public String getinvolved(Principal principal, Model model, HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
		}
		return "getinvolved.jsp";
	}
//--------------------------------------------------------------------------------------------
//	GET Route for READING about page (User doesn't have to be logged in)
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/about")
	public String about(Principal principal, Model model, HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
		}
		return "about.jsp";
	}
	
//--------------------------------------------------------------------------------------------
//	GET Route for READING the news page (User doesn't have to be logged in)
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/news")
	public String news(Principal principal, Model model, HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
		}
		return "news.jsp";
	}
//--------------------------------------------------------------------------------------------
//	GET Route for READING the contact page (User doesn't have to be logged in)
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/contact")
	public String contact(Principal principal, Model model, HttpSession session) {
		if (principal != null) {
			String username = principal.getName();
			model.addAttribute("currentUser", userService.findByUsername(username));
		}
		return "contact.jsp";
	}

// ------------------------------------------------------------------------------------------------------
// GET route for UPDATING one neighborhood by ID
// ------------------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/edit/neighborhood/{community_id}")
	public String getUpdateNeighborhood(@PathVariable("community_id") Long community_id, Model model,
			@ModelAttribute("community") Community community) {
		Community comm = communityService.findCommunityById(community_id);
		model.addAttribute("community", comm);
		model.addAttribute("names", names);
		return "edit.jsp";
	}

//------------------------------------------------------------------------------------------------------
// POST route for UPDATE one neighborhood by ID
//------------------------------------------------------------------------------------------------------    
	@PutMapping("/neighborhood/{id}/update")
	public String postUpdateNeighborhood(Model model, @PathVariable("id") Long community_id,
			@Valid @ModelAttribute("community") Community community, BindingResult result) {
		model.addAttribute("names", names);
		if (result.hasErrors()) {
			return "edit.jsp";
		} else {
			this.communityService.createOrUpdateCommunity(community);
			return "redirect:/resourcefull/neighborhood/" + community_id;
		}
	}

//------------------------------------------------------------------------------------------------------
// POST route for DELETING an community by ID
//------------------------------------------------------------------------------------------------------
	@RequestMapping("/neighborhood/{comm_id}/delete")
	public String deleteCommunity(@PathVariable("comm_id") Long comm_id) {
		communityService.deleteCommunity(comm_id);
		return "redirect:/resourcefull/home";
	}

//------------------------------------------------------------------------------------------------------
// POST route for DELETING a comment by ID
//------------------------------------------------------------------------------------------------------
	@RequestMapping("/comment/{message_id}/{community_id}/delete")
	public String deleteComment(Principal principal, @PathVariable("message_id") Long comment_id,
			@PathVariable("community_id") Long community_id) {
		if (principal != null) {
			String username = principal.getName();
			if (userService.findByUsername(username).getId()
					.equals(communityService.findCommentById(comment_id).getUser().getId())) {
				communityService.deleteComment(comment_id);
			}
			return "redirect:/resourcefull/neighborhood/" + community_id;
		} else {
			return "redirect:/resourcefull/neighborhood/" + community_id;
		}
	}

}
