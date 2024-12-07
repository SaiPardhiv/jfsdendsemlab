package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.Repository.CustomerRepository;
import com.klef.jfsd.springboot.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public String addCustomer(Customer customer) {
		customerRepository.save(customer);
		return "Customer Added Successfully";
	}

	@Override
	public String updateCustomer(Customer customer) {
		Customer c = customerRepository.findById(customer.getId()).get();
		c.setName(customer.getName());
		c.setAddress(customer.getAddress());
		
		customerRepository.save(c);
		return "Customer Updated Succesfully";
	}
	

}
