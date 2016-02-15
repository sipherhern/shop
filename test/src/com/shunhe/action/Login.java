/**
 *  @author Jay Wong
 *  
 */
package com.shunhe.action;


import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shunhe.Admin;
import com.shunhe.MD5;
import com.shunhe.dao.AdminDAO;
import com.shunhe.service.adminService;
import com.shunhe.service.impl.adminServiceImpl;

@Controller
public class Login extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin;
	
	@Autowired
	private adminService adminService;
	
	
	Log log = LogFactory.getLog(Login.class);

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	
	public String login() throws Exception{
		System.out.println(admin.getPassword()+"   "+admin.getAdminName());
		Map session = ActionContext.getContext().getSession();
        String ver2 = (String)session.get("rand");
        
    	//采用md5+salt算法，salt算子为user字符串。
    	String password = MD5.MD5Encode(admin.getPassword(),admin.getAdminName());  
    	System.out.println(password);
        int userId = adminService.loginValidation(admin.getAdminName() , admin.getPassword());
        if (userId > 0) {
            session.put("admin" , admin.getAdminName());
            log.info(admin.getAdminName()+"登录成功");
            return "success";
        }
        else {
            addActionError("用户名/密码不匹配");
            log.info(admin.getAdminName()+"登录失败");
        	return INPUT;
        }
    
	}	
}
