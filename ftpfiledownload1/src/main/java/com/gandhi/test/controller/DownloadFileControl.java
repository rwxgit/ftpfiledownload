package com.gandhi.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gandhi.test.model.DownloadFormVO;

@Controller
public class DownloadFileControl{
	
	@RequestMapping(value="downloadfile", method=RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("DownloadfilePage", "downloadMVbinder", new DownloadFormVO());
	}

	@RequestMapping(value="downloadfile", method=RequestMethod.POST)
	public String submitForm(@ModelAttribute("DownloadfilePage") DownloadFormVO downloadFormVO, BindingResult result) {
	
		return "redirect:addNew/success";
		
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
    	public String success(Model model){
         	return "SuccessPage";
    	}
