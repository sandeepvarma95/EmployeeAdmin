package com.industry.employeeadmin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.industry.employeeadmin.dao.EmployeeDAO;
import com.industry.employeeadmin.model.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO empDAO;
	
	@Transactional
	@Override
	public List<Employee> get() {
		return empDAO.get();
	}

	@Transactional
	@Override
	public Employee get(int id) {
		return empDAO.get(id);
	}

	@Transactional
	@Override
	public void save(Employee emp) {
		empDAO.save(emp);
	}

	@Transactional
	@Override
	public void delete(int id) {
		empDAO.delete(id);
	}

}
