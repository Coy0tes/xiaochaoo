package com.mxc.sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.sys.dao.LoginDao;
import com.mxc.sys.entity.User;


@Service
public class LoginService {

	@Autowired
	private LoginDao dao;
	
	public User get(User login) {
		return dao.get(login);
	}

	public User findList(User login) {
		return dao.findList(login);
	}

}
