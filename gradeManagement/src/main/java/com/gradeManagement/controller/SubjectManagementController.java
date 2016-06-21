package com.gradeManagement.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gradeManagement.model.Subject;
import com.gradeManagement.service.SubjectManagementService;

@Controller
@RequestMapping(value="/subjectManagement")
public class SubjectManagementController {

	Logger logger = Logger.getLogger(this.getClass());
	
	@Autowired
	private SubjectManagementService subjectManagementservice;
	
	@RequestMapping(value="/getSubjectManagementList", method=RequestMethod.GET)
	private String getSubjectManagementList(ModelMap modelMap) {
		modelMap.addAttribute("headTitle", "수업관리");
		return "/subjectManagement/subjectManagementList";
	}
	
	@RequestMapping(value="addSubjectManagement", method=RequestMethod.POST)
	private String addSubjectManagement(ModelMap modelMap, Subject subject) {
		logger.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" + subject.toString());
		subjectManagementservice.addSubjectManagement(subject);
		return "redirect:getSubjectManagementList";
	}
}
