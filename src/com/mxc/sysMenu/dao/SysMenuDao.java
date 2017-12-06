package com.mxc.sysMenu.dao;

import java.util.List;

import com.mxc.sysMenu.entity.SysMenu;

public interface SysMenuDao {

	List<SysMenu> findList(SysMenu sysMenu);

	SysMenu get(SysMenu sysMenu);

	List<SysMenu> findListNull();

}
