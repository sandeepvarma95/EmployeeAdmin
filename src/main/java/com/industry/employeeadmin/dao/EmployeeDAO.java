package com.industry.employeeadmin.dao;

import java.util.List;

import com.industry.employeeadmin.model.Employee;

public interface EmployeeDAO {

	List<Employee> get();
	
	Employee get(int id);
	
	void save(Employee emp);
	
	void delete(int id);
	
}
