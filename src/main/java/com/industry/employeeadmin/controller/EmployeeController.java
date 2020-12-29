package com.industry.employeeadmin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.industry.employeeadmin.model.Employee;
import com.industry.employeeadmin.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService empService;

	/*
	 * @GetMapping("/emp") public List<Employee> get() { return empService.get(); }
	 */

	/*
	 * @GetMapping(value = "/") public String home() {
	 * 
	 * return "index"; }
	 */

	@RequestMapping("/login")
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping("/logout-success")
	public String logoutPage()
	{
		return "logout";
	}

	@RequestMapping(value = { "/" })
	public ModelAndView get() {
		ModelAndView mav = new ModelAndView("EmployeesList");
		List<Employee> list = empService.get();
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping("/addEmployee")
	public ModelAndView addEmployeeForm() {
		ModelAndView mav = new ModelAndView("EmployeesAdd");
		mav.addObject("employee", new Employee());
		return mav;
	}

	/*
	 * @PostMapping("/emp") public Employee save(@RequestBody Employee empObj) {
	 * empService.save(empObj); return empObj; }
	 */

	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute("employee") Employee empObj) {
		ModelAndView mav = new ModelAndView("EmployeesList");
		empService.save(empObj);
		List<Employee> list = empService.get();
		mav.addObject("list", list);
		return mav;
	}

	/*
	 * @GetMapping("/emp/{id}") public Employee get(@PathVariable int id) {
	 * 
	 * Employee empObj = empService.get(id); if (empObj == null) { throw new
	 * RuntimeException("Employee with id: " + id + " is not found or is deleted");
	 * } else { return empObj; } }
	 */

	@RequestMapping("/employee")
	public ModelAndView get(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("EmployeesAdd");
		Employee empObj = empService.get(id);
		if (empObj == null) {
			throw new RuntimeException("Employee with id: " + id + " is not found or is deleted");
		} else {
			mav.addObject("employee", empObj);
			return mav;
		}
	}

	/*
	 * @DeleteMapping("/emp/{id}") public String delete(@PathVariable int id) {
	 * empService.delete(id); return "Item has been deleted with the id: " + id; }
	 */

	@RequestMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("EmployeesList");
		empService.delete(id);
		List<Employee> list = empService.get();
		mav.addObject("list", list);
		return mav;
	}

	@PutMapping("/emp")
	public Employee update(@RequestBody Employee empObj) {
		empService.save(empObj);
		return empObj;
	}
}
