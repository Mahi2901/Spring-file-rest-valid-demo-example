package com.demo.file.service;

import com.demo.file.model.StudentModel;

public interface Studservice 
{
	
	public StudentModel save(StudentModel s);
	public Iterable<StudentModel> findAll();
	public StudentModel findOne(long sid);
	public void delete(StudentModel s);
}
