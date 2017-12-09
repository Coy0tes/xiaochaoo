package com.mxc.sys.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.util.StringUtils;
import com.mxc.sys.entity.Collect;
import com.mxc.sys.service.CollectService;

@Controller
@RequestMapping(value="path/collect")
public class CollectController {

	@Autowired
	private CollectService collectService;
//	@Autowired
//	NewsService newsService;
	
	
	@ModelAttribute
	public Collect get(Collect collect) {
		if(StringUtils.isEmpty(collect.getNewsId())) {
			collect = new Collect();
		}else {
			collect = collectService.get(collect);
		}
		return collect;
	}
	
	/**
	 * 收藏
	 * 收藏，关联用户id跟新闻id，给新闻赋状态
	 * 以后加登录，达到显示已收藏条件：都能关联userid跟newsid
	 * @param collect
	 * @return
	 */
	@RequestMapping(value="save")
	@ResponseBody
	public Map<String, String> save(Collect collect) {
		Map<String, String> map = new HashMap<String, String>();
		
//		Collect collect = new Collect();
//		System.out.println("newsid:--------------------------------"+newsid);
		System.out.println("newsId:"+collect.getNewsId());
		
		collect.setUserId("1");
		if(!StringUtils.isEmpty(collect.getNewsId())) {
			collectService.save(collect);
		}
		return map;
	}
	
	@RequestMapping(value="delete")
	@ResponseBody
	public Map<String, String> delete(String newsId){
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("newsId:"+newsId);
		
		collectService.delete(newsId);
		
		return map;
	}
	
	@RequestMapping(value="collect")
	public Map<String, String> collect(Collect collect) {
		Map<String, String> map = new HashMap<String, String>();
		
		System.out.println("newsId:"+collect.getNewsId());
		
		collect.setUserId("1");
		collectService.save(collect);
		return map;
	}
	
}
