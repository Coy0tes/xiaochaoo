package com.mxc.sys.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.sys.dao.CollectDao;
import com.mxc.sys.entity.Collect;

@Service
public class CollectService {

	@Autowired
	private CollectDao dao;
	
	public Collect get(Collect collect) {
		return collect;
	}

	public void save(Collect collect) {
		String id = UUID.randomUUID().toString().replace("-", "");
		collect.setId(id);
		dao.save(collect);
	}

	public void delete(String newsId) {
		dao.delete(newsId);
	}

}
