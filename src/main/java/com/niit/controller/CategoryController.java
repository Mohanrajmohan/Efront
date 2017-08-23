package com.niit.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategoryDAO;
import com.niit.model.Category;


@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping("newCategory")
	public ModelAndView newCategory(@ModelAttribute Category category) {
		categoryDAO.saveOrUpdate(category);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	
	@RequestMapping("category")
	public ModelAndView newCategory(@ModelAttribute Category category,Model model) {
		ModelAndView mv = new ModelAndView("home");
		model.addAttribute("isUserClickedCategory","true");
		
		return mv;
	}
	@RequestMapping("viewcategory")
	public String viewcategory(Model model) {
	List<Category> categoryList = categoryDAO.list();
	model.addAttribute("categoryList", categoryList);
	model.addAttribute("isUserClickedViewCategory", true);
		return "home";
	}
	
	@RequestMapping("deleteCategory")
	public String deleteCategory(@RequestParam("categoryId") int categoryId, Model model) {
	categoryDAO.delete(categoryId);
		return "redirect:viewcategory";
	}
}
