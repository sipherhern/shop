/**
 * 类说明
 *
 * @author Kuchien Wong
 * @date 2016年1月31日  
 */

package com.shunhe.socket;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

public class Client {
	
	public static final String IpAddress = "localhost";
	public static final int PORT = 8000;
	private String message = null;
	
	public Client(String message){
		this.message = message;
		init(message);
	}
	
	public static void init(String message){
		try {
			Socket Client = new Socket(IpAddress,PORT);
			new Thread(new WriteHandlerThread(Client,message)).start();
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}


class WriteHandlerThread implements Runnable {
	private Socket Client;
	private String message;
	
	public WriteHandlerThread(Socket Client,String message){
		this.Client = Client;
		this.message = message;
	}

	@Override
	public void run() {
		DataOutputStream output = null;
		BufferedReader reader = null;
		try {
				output = new DataOutputStream(Client.getOutputStream());
				output.writeUTF(message);
				System.out.println("发送完毕");	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {  
            try{  
                if(output != null){  
                	output.close();  
                }  
                if(reader != null){  
                	reader.close();  
                }  
                if(Client != null){  
                    Client = null;  
                }
           } catch(Exception e){  
               e.printStackTrace();  
          }  
		
		}
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}