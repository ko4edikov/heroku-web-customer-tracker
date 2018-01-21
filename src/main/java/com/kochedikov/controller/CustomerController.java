package com.kochedikov.controller;

import com.kochedikov.entity.Customer;
import com.kochedikov.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;


    @GetMapping("/list")
    public String getCustomers(Model model) {
        List<Customer> customerList = customerService.getCustomers();
        model.addAttribute("customers", customerList);
        return "list-customer";
    }

    @GetMapping({"/update/{id}"})
    public String getCustomer(@PathVariable("id") int id, Model model) {
        Customer customer = customerService.getCustomer(id);

        model.addAttribute("customer", customer);

        return "update-customer";
    }

    @PostMapping("/update")
    public String saveOrUpdateCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.saveOrUpdateCustomer(customer);

        return "redirect:/customer/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable("id") int id) {
        customerService.deleteCustomer(id);

        return "redirect:/customer/list";
    }

    @GetMapping("/add")
    public String addCustomer(Model model) {
        Customer customer = new Customer();
        model.addAttribute("customer", customer);
        return "add-customer";
    }
}