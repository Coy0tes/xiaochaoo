package com.mxc.sys.dao;

import com.mxc.sys.entity.User;

public interface LoginDao {

	User get(User login);

	User findList(User login);

}
