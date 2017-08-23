package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {

	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("newSupplier")
	public ModelAndView newCategory(@ModelAttribute Supplier supplier) {
		supplierDAO.saveOrUpdate(supplier);
		ModelAndView mv = new ModelAndView("home");

		return mv;
	}
	@RequestMapping("supplier")
	public ModelAndView supplier() {

		ModelAndView mv = new ModelAndView("home");
		mv.addObject("isUserClickedsupplier", "true");
		return mv;
	}
	@RequestMapping("viewsupplier")
	public String viewsupplier(Model model) {
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("isUserClickedViewSupplier", true);
			return "home";
		}
	@RequestMapping("deletesupplier")
	public String deletesupplier(@RequestParam("supplierId") int supplierId, Model model) {
		supplierDAO.delete(supplierId);
		return "redirect:viewsupplier";
	}
}
