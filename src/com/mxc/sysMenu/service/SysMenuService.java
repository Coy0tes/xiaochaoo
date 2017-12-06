package com.mxc.sysMenu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.sysMenu.dao.SysMenuDao;
import com.mxc.sysMenu.entity.SysMenu;

@Service
public class SysMenuService {

	@Autowired
	private SysMenuDao dao;

	public List<SysMenu> findList(SysMenu sysMenu) {
		return dao.findList(sysMenu);
	}

	public SysMenu get(SysMenu sysMenu) {
		return dao.get(sysMenu);
	}

	public List<SysMenu> findListNull() {
		return dao.findListNull();
	}
	
}
