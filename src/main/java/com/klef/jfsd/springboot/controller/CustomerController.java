package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/")
    public ModelAndView home() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }
	
	@GetMapping("updatesuccess")
    public ModelAndView updatesuccess() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatesuccess");
        return mv;
    }
	
	@GetMapping("addcustomer")
    public ModelAndView addcustomer() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addcustomer");
        return mv;
    }
	
	@GetMapping("updatecustomer")
    public ModelAndView updatecustomer() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatecustomer");
        return mv;
    }
	
	@PostMapping("insertcustomer")
	public ModelAndView insertCustomer(HttpServletRequest request) 
	{
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String phoneNumber = request.getParameter("phoneNumber");
	    String address = request.getParameter("address");
	    String dateOfBirth = request.getParameter("dateOfBirth");

	    Customer customer = new Customer();
	    customer.setName(name);
	    customer.setEmail(email);
	    customer.setPhoneNumber(phoneNumber);
	    customer.setAddress(address);
	    customer.setDateOfBirth((dateOfBirth));

	    String message = customerService.addCustomer(customer);

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("regsuccess");
	    mv.addObject("message", message);
	    return mv;
	}
	
	@PostMapping("update")
    public ModelAndView update(HttpServletRequest request) 
    {
        int id = Integer.parseInt(request.getParameter("Id"));
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        

        Customer c = new Customer();
        c.setId(id);
        c.setName(name);
        c.setAddress(address);

        String msg = customerService.addCustomer(c);

        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);

        return mv;
    }

}
