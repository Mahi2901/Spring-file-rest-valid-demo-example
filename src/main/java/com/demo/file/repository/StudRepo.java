package com.demo.file.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.demo.file.model.StudentModel;

@Repository
public interface StudRepo extends JpaRepository<StudentModel, Long> 
{
	
}
