package com.mxc.sys.entity;
/**
 * 登录用户名跟密码
 * @author PG01
 *
 */
public class User {
	private String id;
	private String userName;	// 用户名
	private String name;		// 姓名
	private String password;	// 密码
	private String userType;	// 用户类型
	
	
	
	
	public User() {
		System.out.println("This is Entity:SysUser------------->");
	}
	public User(String userName, String name, String password, String userType) {
		super();
		this.userName = userName;
		this.name = name;
		this.password = password;
		this.userType = userType;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
