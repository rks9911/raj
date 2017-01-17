package com.MongoDB.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.MongoDB.DAOInterFace.HomedaoInterFace;
import com.MongoDB.Entity.StudentInfo;

@Service
public class Homeservice {
	@Autowired
	private HomedaoInterFace homedaointerFace;
	@Autowired
	private StudentInfo student;
	
	@Transactional
	public List<StudentInfo> findall() {
		return homedaointerFace.findall();
	}
	@Transactional
	public String add(String name, Integer age) {
		student.setName(name);
		student.setAge(age);
		return homedaointerFace.add(student);
		
	}
	@Transactional
	public String delete(String name) {
		return homedaointerFace.delete(name);
		
	}
	@Transactional
	public StudentInfo find(String name) {
		return homedaointerFace.find(name);
	}
	@Transactional
	public List<StudentInfo> findByPagination(Integer id) {
		System.out.println("Working");
		return homedaointerFace.findByPagination(id);
	}
	
	
	

}
