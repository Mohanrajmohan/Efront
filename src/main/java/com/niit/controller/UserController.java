package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.UserDAO;
import com.niit.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;

	@RequestMapping("newUser")
	public ModelAndView newUser(@ModelAttribute User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("user")
	public ModelAndView User() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedUser", "true");
		return mv;
	}
	
	@RequestMapping("viewuser")
	public String viewuser(Model model) {
		List<User> userList = userDAO.list();
		model.addAttribute("userList", userList);
		model.addAttribute("isUserClickedViewUser", true);
			return "home";
		}
}