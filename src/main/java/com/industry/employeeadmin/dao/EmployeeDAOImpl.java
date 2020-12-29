package com.industry.employeeadmin.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.industry.employeeadmin.model.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	
	@Autowired
	private EntityManager entityManager;

	@Override
	public List<Employee> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Employee> query = currentSession.createQuery("from Employee", Employee.class);
		List<Employee> empList = query.getResultList();
		return empList;
	}
	

	@Override
	public Employee get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Employee empObj = currentSession.get(Employee.class, id);
		return empObj;
	}

	@Override
	public void save(Employee emp) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(emp);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Employee empObj = currentSession.get(Employee.class, id);
		currentSession.delete(empObj);
	}

}
