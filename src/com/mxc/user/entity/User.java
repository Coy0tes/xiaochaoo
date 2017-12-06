package com.mxc.user.entity;

public class User {

	public Integer id;
	public String username;
	public String password;
	public Integer age;
	public String sex;
	public String birthday;
	public String address;
	
	public User() {
		System.out.println("User Bean...");
	}
	public User(Integer id, String username, String password, Integer age, String sex, String birthday, String address) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.age = age;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", age=" + age + ", sex=" + sex
				+ ", birthday=" + birthday + ", address=" + address + "]";
	}
	
	
}
