package com.gradeManagement.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gradeManagement.model.Subject;

@Repository("subjectManagementDao")
public class SubjectManagementDao {

	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;

	public void addSubjectManagement(Subject subject) {
		sqlsessionTemplate.insert("subjectManagementDao.insertSubjectManagement", subject);
		
	}
	
	
}
