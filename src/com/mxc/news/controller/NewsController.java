package com.mxc.news.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.druid.util.StringUtils;
import com.mxc.news.entity.News;
import com.mxc.news.service.NewsService;

@Controller
@RequestMapping("path/news")
public class NewsController {

	@Autowired
	NewsService newsService;
//	@RequestParam(required=false) String id, 
	@ModelAttribute("news")
	public News get(News news, HttpServletRequest request) {
		if(StringUtils.isEmpty(news.getId())) {
			news = new News();
		}else {
			news = newsService.get(news);
		}
		return news;
	}
	
	/**
	 * 查询新闻
	 * @return
	 */
	@RequestMapping(value="findList")
	public String findList(News news, Model model){
		List<News> list = newsService.findList(news);
		for(News each:list){
			System.out.println(each);
		}
		model.addAttribute("newsList", list);
		return "/webPage/page/news/newsList";
	}
	
	@RequestMapping(value="findListMap")
	@ResponseBody
	public Map<String, Object> findListMap(News news, Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<News> list = newsService.findList(news);
		for(News each:list){
			System.out.println(each);
		}
//		String array = JSONArray.toJSONString(list);
//	    
// 		String str = JSON.toJSONString(list);
// 		System.out.println(" list:"+list);
// 		System.out.println("array:"+array);
//		System.out.println("s t r:"+str);
		map.put("newsList", list);
		return map;
	}
	
	/**
	 * 新增、编辑页面
	 * @param news
	 * @param model
	 * @return
	 */
	@RequestMapping(value="from")
	public String from(News news, Model model, HttpServletRequest request) {
		// 结果为true，id为空，为新增
		if(StringUtils.isEmpty(news.getId())) {
			System.out.println("null..................");
		}else {
			news = newsService.get(news);
			model.addAttribute("news", news);
		}
		return "webPage/page/news/newsAdd";
	}
	
	/**
	 * 编辑保存
	 * @param news
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping(value="save")
	public String save(News news, Model model,HttpServletRequest request) throws Exception {
		News n = new News();
			if(StringUtils.isEmpty(news.getId())) {
				newsService.save(news);
			}else {
				newsService.update(news);
			}
		return findList(n, model);
	}
	
	@RequestMapping(value="delete")
	public String delete(News news) {
		System.out.println(news.getId());
		newsService.delete(news);
		return "webPage/page/news/newsList";
	}
	
}
