package com.niit.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
