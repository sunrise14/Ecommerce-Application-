package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/getproductform")
	public String getProductForm(Model model){
		List<Category> categories=productService. getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("product", new Product());
		return "productform";
	}
	
	@RequestMapping("/saveproduct")
	public String saveProduct(@ModelAttribute(name="product") Product product, BindingResult result, Model model){
		if(result.hasErrors()){
			List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories",categories);
			return "productform";
		}
		productService.saveProduct(product);
		MultipartFile image=product.getImage();
		Path path=Paths.get("C:/Users/RishithaReddy/workspace/project1frontend/src/main/webapp/WEB-INF/resources/images/"+product.getId()+".png");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/all/product/getallproducts";
	}
	
	@RequestMapping("/all/product/getallproducts")
	public String getAllProducts(Model model){
		List<Product> products=productService.getAllProducts();
		model.addAttribute("products",products);
		return "productlist";
	}
	
	@RequestMapping("/all/product/viewproduct/{id}")
	public String getProductById(@PathVariable int id, Model model){
		Product product=productService.getProductById(id);
		model.addAttribute("product",product);
		return "viewproduct";
	}
	@RequestMapping("/admin/product/deleteproduct/{id}")
	public String deleteProduct(@PathVariable int id){
		productService.deleteProduct(id);
		return "redirect:/all/product/getallproducts";
	}
	@RequestMapping("/admin/product/geteditform/{id}")
	public String getEditForm(@PathVariable int id, Model model){
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		Product product=productService.getProductById(id);
		model.addAttribute("productObj",product);
		return "editform";
	}
	@RequestMapping("/admin/product/editproduct")
	public String editProduct(@ModelAttribute(name="productObj") Product product, BindingResult result, Model model){
		if(result.hasErrors()){
			List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories",categories);
			return "editform";
		}
		productService.updateProduct(product);
		MultipartFile image=product.getImage();
		Path path=Paths.get("C:/Users/RishithaReddy/workspace/project1frontend/src/main/webapp/WEB-INF/resources/images/"+product.getId()+".png");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "redirect:/all/product/getallproducts";
	}
}
