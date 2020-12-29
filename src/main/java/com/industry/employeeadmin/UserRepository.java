package com.industry.employeeadmin;

import org.springframework.data.jpa.repository.JpaRepository;

import com.industry.employeeadmin.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByUsername(String username);
}