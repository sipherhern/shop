/**
 *  @author Jay Wong
 *  
 */
package com.shunhe.action;


import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shunhe.Admin;
import com.shunhe.MD5;
import com.shunhe.service.adminService;


public class Login extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin;
	private adminService adminService;
	
	Log log = LogFactory.getLog(Login.class);

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	public String login() throws Exception{
		Map session = ActionContext.getContext().getSession();
        String ver2 = (String )session.get("rand");
        
    	//采用md5+salt算法，salt算子为user字符串。
    	String password = MD5.MD5Encode(admin.getPassword(),admin.getAdminName());  
    	System.out.println(password);
        int userId = adminService.loginValidation(admin.getAdminName() , admin.getPassword());
        if (userId > 0) {
            session.put("user" , admin.getAdminName());
            log.info(admin.getAdminName()+"登录成功");
            return SUCCESS;
        }
        else {
            addActionError("用户名/密码不匹配");
            log.info(admin.getAdminName()+"登录失败");
        	return INPUT;
        }
    
	}
	
	public String execute() {
		return "success";
	}
		
}
