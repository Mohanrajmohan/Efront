package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class homecontroller {

	@RequestMapping("home")
	public ModelAndView HOME() {
	ModelAndView mv=new ModelAndView("home");
	return mv;
	}
	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("/")
	public String home(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);

		return "home";
	}
	@RequestMapping("product")
	public ModelAndView Product() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedProduct", "true");
		return mv;
}
	@RequestMapping("supplier")
	public ModelAndView supplier() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedsupplier", "true");
		return mv;
	}
	@RequestMapping("Category")
	public ModelAndView Category() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedCategory", "true");
		return mv;
	}
	@RequestMapping("User")
	public ModelAndView User() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedUser", "true");
		return mv;
	}


}
