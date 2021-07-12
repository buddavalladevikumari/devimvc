package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;
import  java.util.*;

@Controller
public class CustomerController {
	
	
	@Autowired
	private Customer customers;
	
	@Autowired
	private CustomerRepository repo;
	
	@RequestMapping(value="/customers",method = RequestMethod.GET)
	public String initForm(Model model) {
		
		model.addAttribute("command",customers);
		
		return "addcustomer";}
		
		@RequestMapping(value="/customers",method = RequestMethod.POST)
		public String submitform(@ModelAttribute("command")Customer customers, Model model) {
			
		
			
			
		 int rowadded=	repo.addcustomer(customers);
		 
			System.out.println(customers);
		 model.addAttribute("rowAdded",rowadded);
			
			return "addcustomer";
	}
		
		
		@RequestMapping(value="/customers/all",method = RequestMethod.GET)
		public String findallcustomer(Model model) {
			
			List<Customer> list = repo.getallcustomers();
			model.addAttribute("list",list);
			
			return "showcustomer";}

}
