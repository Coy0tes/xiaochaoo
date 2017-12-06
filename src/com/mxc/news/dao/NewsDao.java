package com.mxc.news.dao;

import java.util.List;

import com.mxc.news.entity.News;

public interface NewsDao {

	News get(News news);

	void save(News news);

	void update(News news);

	List<News> findList(News news);

	void updateCollect(News news);

	void delete(News news);


}
