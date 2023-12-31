package com.programmingGeek02.springboot.myfirstwebapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.programmingGeek02.springboot.myfirstwebapp.model.Todo;

public interface TodoRepository extends JpaRepository<Todo, Integer>
{

	public List<Todo> findByUsername(String username);
	
}