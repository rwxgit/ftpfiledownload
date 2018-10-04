package com.gandhi.test.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import org.apache.commons.net.PrintCommandListener;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;

public class DownloadFileService {

	FTPClient ftp = null;
	String server = "speedtest.tele2.net";
	String username = "anonymous";
	String password = "anonymous";
	String remoteFilePath = "5MB.zip";
	String localFilePath = "/media/gandhi/d_data/ftp/5MB.zip";
	
	// constructor for DownloadFileService
    public DownloadFileService(String host, String user, String pwd) throws Exception {
        
    	ftp = new FTPClient();
        ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));
        
        System.out.println("creation of ftp connection - 1");
        int reply;
        
        try {
			ftp.connect(server);
		} catch (Exception e) {
			e.printStackTrace();
		}
        reply = ftp.getReplyCode();
        System.out.println("Connected to " + server + "." + " replycode "
        					+ reply);
        
        if (!FTPReply.isPositiveCompletion(reply)) {
            ftp.disconnect();
            throw new Exception("Exception in connecting to FTP Server");
        }
        
        ftp.login(username, password);
        ftp.setFileType(FTP.BINARY_FILE_TYPE);
        ftp.enterLocalPassiveMode();
    }

    /* method to retrieve file from the remote system */
    public void downloadFile(String remoteFileP, String localFileP) {
        try {
        	System.out.println("File to be downloaded is " + remoteFilePath);
        	FileOutputStream fos = new FileOutputStream(localFilePath);
        	this.ftp.retrieveFile(remoteFilePath, fos);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* method to disconnect from the remote system */
    public void disconnect() {
        if (this.ftp.isConnected()) {
            try {
                this.ftp.logout();
                this.ftp.disconnect();
            } catch (IOException f) {
                // do nothing as file is already downloaded from FTP server
            }
        }
    }

}
