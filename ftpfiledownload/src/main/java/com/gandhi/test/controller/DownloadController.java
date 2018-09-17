package com.gandhi.test.controller;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.SessionAttributes;
//import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/test")
public class DownloadController {
	
	String name;
	
	@RequestMapping(method = RequestMethod.GET)
	public String download(Model model) {
		return "test";
	}

}
