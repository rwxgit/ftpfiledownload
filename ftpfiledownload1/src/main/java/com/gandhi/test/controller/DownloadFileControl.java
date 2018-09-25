package com.gandhi.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.ui.ModelMap;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gandhi.test.model.DownloadFormVO;
import com.gandhi.test.service.DownloadFileService;

@Controller
public class DownloadFileControl{
	
	@RequestMapping(value="downloadfile", method=RequestMethod.GET)
	public ModelAndView showForm() {
		return new ModelAndView("DownloadfilePage", "downloadMVbinder", new DownloadFormVO());
	}

	@RequestMapping(value="downloadfile", method=RequestMethod.POST)
	public String submitForm(@ModelAttribute("downloadMVbinder") DownloadFormVO downloadFormVO, BindingResult result) {
		/* 
		 * 1. validate the input received from html form 
		 * 2. once validation is successful, then call the module 
		 * 
		 * */
		boolean error = false;
		
		System.out.println("Ip Address is ==> " + downloadFormVO.getIpAddress());
		if (downloadFormVO.getIpAddress().isEmpty()) {
			result.rejectValue("ipAddress", "error.ipAddress");
			error = true;
		}
		
		System.out.println("Username is ==> " + downloadFormVO.getUserName());
		if (downloadFormVO.getUserName().isEmpty()) {
			result.rejectValue("userName", "error.userName");
			error= true;
		}
		
		System.out.println("Password is ==> " + downloadFormVO.getPassword());
		if (downloadFormVO.getPassword().isEmpty()) {
			result.rejectValue("password", "error.password");
			error= true;
		}
		
		System.out.println("File name is ==> " + downloadFormVO.getFileName());
		if (downloadFormVO.getFileName().isEmpty()) {
			result.rejectValue("fileName", "error.fileName");
			error= true;
		}
		
		System.out.println("Windows Path is ==> " + downloadFormVO.getWindowsPath());
		if (downloadFormVO.getWindowsPath().isEmpty()) {
			result.rejectValue("windowsPath", "error.windowsPath");
			error= true;
		}
		
		if(error) {
			return "DownloadfilePage";
		}
		
		/*
		 * Once the data is validated, then the data is used to get the ftp done.
		 * The FTP functionality is done by DownloadFileService.
		 */
		try {
			DownloadFileService ftpDownloader = 
					new DownloadFileService(
							"ftp_server.journaldev.com", 
							"ftp_user@journaldev.com", 
							"ftpPassword");
			ftpDownloader.downloadFile(
					"sitemap.xml", 
					"/Users/pankaj/tmp/sitemap.xml");
            System.out.println("FTP File downloaded successfully");
            ftpDownloader.disconnect();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:success";
		
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
    public String success(Model model){
         return "SuccessPage";
    }
}
