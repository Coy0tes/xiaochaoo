package com.mxc.news.service;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.news.dao.NewsDao;
import com.mxc.news.entity.News;

@Service
public class NewsService {

	@Autowired
	private NewsDao dao;
	
	public News get(News news) {
		return dao.get(news);
	}

	public void save(News news) {
		// uuid生成随机id
		UUID id = UUID.randomUUID();
		news.setId(id.toString().replace("-", ""));
		// 获取当前用户

		dao.save(news);
	}

	public void update(News news) {
		dao.update(news);
	}

	public List<News> findList(News news) {
		return dao.findList(news);
	}

	public void updateCollect(News news) {
		dao.updateCollect(news);
	}

	public void delete(News news) {
		dao.delete(news);
	}

}
