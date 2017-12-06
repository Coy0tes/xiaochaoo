package com.mxc.sys.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.sys.login.dao.LoginDao;
import com.mxc.sys.login.entity.Login;


@Service
public class LoginService {

	@Autowired
	private LoginDao dao;
	
	public Login get(Login login) {
		return dao.get(login);
	}

	public Login findList(Login login) {
		return dao.findList(login);
	}

}
