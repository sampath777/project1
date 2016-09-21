package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.UserDetails;
import com.niit.shoppingcart.model.UserRole;

@Controller
public class UserController {

   @Autowired
	UserDAO userDAO;
    
    
   @RequestMapping("/")
	public ModelAndView index()
	{
		return new ModelAndView("index");
	}
   @RequestMapping("/register")
  	public ModelAndView register()
  	{
  		return new ModelAndView("register");
  	}
     
   @RequestMapping("/Contact")
	public ModelAndView contact()
	{
		return new ModelAndView("Contact");
	}
    @RequestMapping("/men")
	public ModelAndView men()
	{
		return new ModelAndView("men");
	}
   @RequestMapping("/productList")
	public ModelAndView productList()
	{
		return new ModelAndView("productList");
	}
    @RequestMapping("/women")
	public ModelAndView women()
	{
		return new ModelAndView("women");
	}
    @RequestMapping("/CategoryUser")
	public ModelAndView admin()
	{
		return new ModelAndView("CategoryUser");
	}@RequestMapping("/AccessDenied")
	public ModelAndView AccessDenied()
	{
		return new ModelAndView("AccessDenied");
	}
    @RequestMapping("/userpage")
	public ModelAndView user()
	{
		return new ModelAndView("userpage");
	}
    @RequestMapping("/users")
	public ModelAndView users()
	{
		return new ModelAndView("users");
	}
    @RequestMapping("/adminHome")
	public ModelAndView adminHome()
	{
		return new ModelAndView("adminHome");
	}
    @RequestMapping("/login")
   	public ModelAndView login()
   	{
   		return new ModelAndView("login");
   	}
    @RequestMapping("/logout")
   	public ModelAndView logout()
   	{
   		return new ModelAndView("login");
   	}
    @RequestMapping("/home")
   	public ModelAndView home()
   	{
   		return new ModelAndView("home");
   	}
    
	@RequestMapping(value= "/register", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("register") UserDetails userdetails,UserRole userRole){
		userDAO.saveOrUpdate(userdetails,userRole);
		return "login";
			}
	/*@RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");
		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(name, password,true)) 
		{
			message = "Valid credentials";
			 mv = new ModelAndView("adminHome");
		} else {
			message = "Invalid credentials";
			 mv = new ModelAndView("login");
		}
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
    */
}
