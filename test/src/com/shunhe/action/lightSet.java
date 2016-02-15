package com.shunhe.action;

import com.opensymphony.xwork2.ActionSupport;
import com.shunhe.socket.Client;

@SuppressWarnings("serial")
public class lightSet extends ActionSupport {
	
	 private String buttonVal;
	 private Client client;
	 
	 public String getButtonVal() {
			return buttonVal;
		}

	 public void setButtonVal(String buttonVal) {
			this.buttonVal = buttonVal;
		}
		
	 public Client getClient() {
			return client;
		}

	 public void setClient(Client client) {
			this.client = client;
		}

	 public String execute() throws Exception{
		 	setClient(new Client(buttonVal));
			return "success";
	 }
}
