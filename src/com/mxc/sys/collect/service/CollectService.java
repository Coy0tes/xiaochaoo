package com.mxc.sys.collect.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxc.news.dao.NewsDao;
import com.mxc.news.entity.News;
import com.mxc.sys.collect.dao.CollectDao;
import com.mxc.sys.collect.entity.Collect;

@Service
public class CollectService {

	@Autowired
	CollectDao dao;
//	@Autowired
//	NewsDao newsDao;
	
	public Collect get(Collect collect) {
		return collect;
	}

	public void save(Collect collect) {
		String id = UUID.randomUUID().toString().replace("-", "");
		collect.setId(id);
		
		// 以后加登录，达到显示已收藏条件：都能关联userid跟newsid
		// 更新用户id
		// 更新新闻收藏id
		// 将收藏id更新到新闻
//		News news = new News();
//		news.setCollect(id);
//		newsDao.updateCollect(news);
		
		dao.save(collect);
	}

	public void delete(String newsId) {
//		News news = new News();
//		news.setCollect(null);
//		newsDao.updateCollect(news);
		dao.delete(newsId);
	}

}
