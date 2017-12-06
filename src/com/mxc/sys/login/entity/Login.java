package com.mxc.sys.login.entity;
/**
 * 登录用户名跟密码
 * @author PG01
 *
 */
public class Login {
	
	private String userName;	// 用户名
	private String logName;		// 用户登录名
	private String password;	// 密码
	private String userType;	// 用户类型
	
	
	
	
	public Login() {
		System.out.println("This is Entity:SysUser------------->");
	}
	public Login(String userName, String logName, String password, String userType) {
		super();
		this.userName = userName;
		this.logName = logName;
		this.password = password;
		this.userType = userType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getLogName() {
		return logName;
	}
	public void setLogName(String logName) {
		this.logName = logName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	

}
