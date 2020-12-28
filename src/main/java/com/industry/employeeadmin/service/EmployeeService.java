package com.industry.employeeadmin.service;

import java.util.List;

import com.industry.employeeadmin.model.Employee;

public interface EmployeeService {
	
	List<Employee> get();
	
	Employee get(int id);
	
	void save(Employee emp);
	
	void delete(int id);

}
