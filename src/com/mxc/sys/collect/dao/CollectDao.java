package com.mxc.sys.collect.dao;

import com.mxc.sys.collect.entity.Collect;

public interface CollectDao {

	void save(Collect collect);

	void delete(String newsId);

}
