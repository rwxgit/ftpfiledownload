package com.gandhi.test.model;

import java.io.Serializable;

public class DownloadFormVO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String ipAddress;
	private String userName;
	private String password;
	private String fileName;
	private String windowsPath;
	
	@Override
	public String toString(){
		return "DownloadFormVO [ipaddres=" + ipAddress 
								+ "usernam=" + userName
								+ "passwor=" + password
								+ "filenam=" + fileName
								+ "windowsPath=" + windowsPath
								+ "]";
				
	}
	
	public DownloadFormVO() {
		super();
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public String getFileName() {
		return fileName;
	}

	public String getWindowsPath() {
		return windowsPath;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public void setWindowsPath(String windowsPath) {
		this.windowsPath = windowsPath;
	}
	
}
