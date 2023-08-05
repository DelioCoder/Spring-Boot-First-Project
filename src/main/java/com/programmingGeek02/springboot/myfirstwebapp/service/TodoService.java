package com.programmingGeek02.springboot.myfirstwebapp.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import com.programmingGeek02.springboot.myfirstwebapp.model.Todo;

import jakarta.validation.Valid;

@Service
public class TodoService
{
	private static List<Todo> todos = new ArrayList<>();
	
	private static int todoCount = 0;
	
	static {
		todos.add(new Todo(todoCount++, "in28Minutes", "Learn AWS", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(todoCount++, "in28Minutes", "Learn DevOps", LocalDate.now().plusYears(2), false));
		todos.add(new Todo(todoCount++, "in28Minutes", "Learn Full Stack Development", LocalDate.now().plusYears(3), false));
	}
	
	public List<Todo> findByUsername(String name)
	{
		
		Predicate<? super Todo> predicate = todo -> todo.getUsername().equalsIgnoreCase(name);
		
		return todos.stream().filter(predicate).toList();
	}
	
	public void addTodoinList(String username, String description, LocalDate targetDate, boolean done)
	{
		todos.add(new Todo(++todoCount, username, description, targetDate, done));
	}
	
	public void deleteTodoById(int id)
	{
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		
		todos.removeIf(predicate);
	}

	public Todo findById(int id) {
		
		Predicate<? super Todo> predicate = todo -> todo.getId() == id;
		
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		
		return todo;
	}

	public void updateTodo(@Valid Todo todo) {
		// TODO Auto-generated method stub
		deleteTodoById(todo.getId());
		todos.add(todo);
		
	}
	
}
