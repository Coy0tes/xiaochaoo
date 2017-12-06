package com.mxc.links.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.links.dao.LinksDao;
import com.mxc.links.entity.Links;

@Service
public class LinksService {

	@Autowired
	LinksDao dao;
	
	public List<Links> findList(Links links) {
		return dao.findList(links);
	}

	public Links get(Links links) {
		return dao.get(links);
	}

}
