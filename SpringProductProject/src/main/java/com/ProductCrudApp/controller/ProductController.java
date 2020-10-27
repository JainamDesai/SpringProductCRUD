package com.ProductCrudApp.controller;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.ProductCrudApp.dao.ProductDao;
import com.ProductCrudApp.model.UserProduct;
@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	@RequestMapping("/home")
	public String getHome(Model m){
		List<UserProduct> product = productDao.getAllProduct();
		m.addAttribute("product",product);
		return "home";
	}
	@RequestMapping("/addProductForm")
	public String addProduct(Model m){
		m.addAttribute("title","Add Product Form");
		return "addProduct_form";
	}
	@RequestMapping("/saveMsg")
	public String getSaveMessage(Model m){
		m.addAttribute("title","Save Product");
		return "successSave";
	}
	//save product
	@RequestMapping(value = "/handleSaveProduct",method = RequestMethod.POST)
	public RedirectView handleSaveProduct(@ModelAttribute UserProduct product){
		productDao.saveProduct(product);
		RedirectView  rd = new RedirectView();
		rd.setUrl("saveMsg");
		return rd;
	}
	//delete product
	@RequestMapping("/deleteProduct/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int id,HttpServletRequest request){
		 productDao.deleteProduct(id);
		RedirectView rd = new RedirectView();
		rd.setUrl(request.getContextPath()+"/home");
		return rd;
	}
	@RequestMapping("/updateProduct/{id}")
	public String getDeleteMsg(@PathVariable("id") int id,Model m){
		UserProduct product = this.productDao.getProduct(id);
		m.addAttribute("product",product);
		return "updateForm";
	}
	@RequestMapping(value = "/handleSaveProduct",method = RequestMethod.PUT)
	public RedirectView saveUpdateData(@ModelAttribute UserProduct product,HttpServletRequest request){
		productDao.updateProduct(product);
		RedirectView rd = new RedirectView();
		rd.setUrl(request.getContextPath()+"/home");
		return rd;
	}
							
}
