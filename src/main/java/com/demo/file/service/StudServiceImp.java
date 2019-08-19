package com.demo.file.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.file.model.StudentModel;
import com.demo.file.repository.StudRepo;

@Service
@Transactional
public class StudServiceImp implements Studservice 
{
	@Autowired
	StudRepo studRepo;

	@Override
	public StudentModel save(StudentModel s) {
		// TODO Auto-generated method stub
		return studRepo.save(s);
	}

	@Override
	public Iterable<StudentModel> findAll() {
		// TODO Auto-generated method stub
		return studRepo.findAll();
	}

	@Override
	public StudentModel findOne(long sid) {
		// TODO Auto-generated method stub
		return studRepo.findById(sid).orElse(new StudentModel());
	}

	@Override
	public void delete(StudentModel s) {
		// TODO Auto-generated method stub
		studRepo.delete(s);
	}



}
