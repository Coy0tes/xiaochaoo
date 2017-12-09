package com.mxc.sys.dao;

import com.mxc.sys.entity.Collect;

public interface CollectDao {

	void save(Collect collect);

	void delete(String newsId);

}
