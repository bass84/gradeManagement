package com.gradeManagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gradeManagement.dao.SubjectManagementDao;
import com.gradeManagement.model.College;
import com.gradeManagement.model.Subject;

@Service("subjectManagementService")
public class SubjectManagementService {

	@Autowired
	private SubjectManagementDao subjectManagementDao;

	public void addSubjectManagement(Subject subject) {
		subjectManagementDao.addSubjectManagement(subject);
		
	}
}
