package com.mxc.links.dao;

import java.util.List;

import com.mxc.links.entity.Links;

public interface LinksDao {

	List<Links> findList(Links links);

	Links get(Links links);

}
