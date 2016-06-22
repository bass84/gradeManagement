package com.gradeManagement.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gradeManagement.model.Subject;

@Repository("subjectManagementDao")
public class SubjectManagementDao {

	@Autowired
	private SqlSession sqlsessionTemplate;

	public void addSubjectManagement(Subject subject) {
		sqlsessionTemplate.insert("subjectManagementDao.insertSubjectManagement", subject);
		
	}

	public List<Subject> getSubjectManagementList() {
		return sqlsessionTemplate.selectList("subjectManagementDao.getSubjectManagementList");
		
	}

	public Subject getSubjectManagement(Subject subject) {
		return sqlsessionTemplate.selectOne("subjectManagementDao.getSubjectManagement", subject);
	}

	public void updateSubjectManagement(Subject subject) {
		sqlsessionTemplate.update("subjectManagementDao.updateSubjectManagement", subject);
		
	}
	
	
}
