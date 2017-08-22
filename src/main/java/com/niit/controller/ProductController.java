package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping("newProduct")
	public ModelAndView newCategory(@ModelAttribute Product product) {
		productDAO.saveOrUpdate(product);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("viewproduct")
	public String viewproduct(Model model) {
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("isUserClickedViewProduct", true);
			return "home";
		}
}