package com.gradeManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gradeManagement.model.GradeManagement;
import com.gradeManagement.service.GradeManagementService;

@Controller
public class GradeManagementController {

	@Autowired
	private GradeManagementService gradeManagementService;
	
	@RequestMapping(value="/addNewManagement", method = RequestMethod.GET)
	public String addGrade(ModelMap modelMap, GradeManagement gradeManagement) {
		return null;
	}

}
