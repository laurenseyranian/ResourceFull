package com.codingdojo.resourcefull.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.resourcefull.models.User;
import com.codingdojo.resourcefull.services.UserService;
import com.codingdojo.resourcefull.validator.UserValidator;

@Controller
public class UserController {
//--------------------------------------------------------------------------------------------
// Attribute
//--------------------------------------------------------------------------------------------
	private final UserService userService;
	private UserValidator userValidator;

	// ----------------------------------------------------------------------------------------
	// Constructors
	// ----------------------------------------------------------------------------------------
	public UserController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
//--------------------------------------------------------------------------------------------
//										Routes
//--------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
// GET route for READING ADMIN home page 
//--------------------------------------------------------------------------------------------
	@RequestMapping("/resourcefull/administrator")
	public String adminPage(Principal principal, Model model) {
		String username = principal.getName();
		model.addAttribute("currentUser", userService.findByUsername(username));
		return "admin.jsp";
	}
//---------------------------------------------------------------------------------------------
//								REGISTRATION ROUTES
//---------------------------------------------------------------------------------------------

//--------------------------------------------------------
// GET route for READING sign-up page
//---------------------------------------------------------------------------------------------	
	@RequestMapping("/resourcefull/signup")
	public String signupForm(@ModelAttribute("user") User user) {
		return "signup.jsp";
	}

//--------------------------------------------------------------------------------------------
// POST route for CREATING a user with user credentials
// --------------------------------------------------------------------------------------------
	@RequestMapping(value = "/signup/process", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session, RedirectAttributes attribute) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "signup.jsp";
		}
		userService.saveWithUserRole(user);
		return "redirect:/resourcefull/login";
	}

//---------------------------------------------------------------------------------------------
//									LOGIN ROUTES
//---------------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------------
// POST route for logging in a user and logging out a user
//--------------------------------------------------------------------------------------------
	@RequestMapping(value = "/resourcefull/login")
	public String loginUser(@RequestParam(value = "error", required = false) String error, @RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
		}
		if (logout != null) {
			model.addAttribute("logoutMessage", "Logout Successful!");
		}
		return "login.jsp";
	}
}
