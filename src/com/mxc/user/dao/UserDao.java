package com.mxc.user.dao;

import java.util.List;

import com.mxc.user.entity.User;

public interface UserDao {

	public List<User> getUserAll();

	public User getUserById(User user);

	public void addUser(User user);

	public User updateUser(User user);

	public void deleteUser(User user);

}
