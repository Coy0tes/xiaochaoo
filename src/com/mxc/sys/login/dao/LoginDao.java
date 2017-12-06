package com.mxc.sys.login.dao;

import com.mxc.sys.login.entity.Login;

public interface LoginDao {

	Login get(Login login);

	Login findList(Login login);

}
