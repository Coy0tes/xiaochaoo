package com.mxc.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.user.dao.UserDao;
import com.mxc.user.entity.User;

@Service
public class UserService {

	@Autowired
	private UserDao dao;
	
	public List<User> getUserAll() {
		return dao.getUserAll();
	}

	public User getUserById(User user) {
		return dao.getUserById(user);
	}

	public void addUser(User user) {
		dao.addUser(user);
	}

	public void delete(User user) {
		dao.deleteUser(user);
	}

	public User update(User user) {
		return dao.updateUser(user);
	}
	
}
