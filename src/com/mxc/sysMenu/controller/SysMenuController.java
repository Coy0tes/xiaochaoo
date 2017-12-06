package com.mxc.sysMenu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mxc.news.entity.News;
import com.mxc.news.service.NewsService;
import com.mxc.sysMenu.entity.SysMenu;
import com.mxc.sysMenu.service.SysMenuService;


/**
 * index主页〉
 * @author PG01
 */
@RequestMapping(value="path/sys")
@Controller
public class SysMenuController {

	
	@Autowired
	SysMenuService sysMenuService;
	@Autowired
	NewsService	newsService;
	
//	@RequestMapping(value="index")
//	public Map<String, Object> index(SysMenu sysMenu) {
//		Map<String, Object> map = new HashMap<String, Object>();
//		
//		List<SysMenu> list = sysMenuService.findList(sysMenu);
//		sysMenu = list.get(0);
//		System.out.println(list.get(0));
//		System.out.println(sysMenu);
//		map.put("path", sysMenu);
//		return map;
//	}
	
	/**
	 * 由index页面发ajax请求，返回到main页面
	 * @param sysMenu
	 * @return
	 */
	@RequestMapping(value="index")
	public String index(SysMenu sysMenu, Model model) {
		
		/**
		 * 首页新闻
		 */
		News news = new News();
		List<News> newsList = newsService.findList(news);
		model.addAttribute("newsList", newsList);
			
		return "main";
	}
	
	@RequestMapping(value="index_news")
	public Map<Object, Object> indexNews(Model model){
		Map<Object, Object> map = new HashMap<Object, Object>();
		News news = new News();
		List<News> newsList =  newsService.findList(news);
		for(News each:newsList){
			System.out.println(each);
		}
		map.put("newsList", newsList);
		return map;
	}
	
	//动态获取文章总数和待审核文章数量,最新文章
	//图片总数
	//用户数
	//系统基本参数
	
	public static void main(String[] args) {
		
	}
}
