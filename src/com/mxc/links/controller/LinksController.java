package com.mxc.links.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.druid.util.StringUtils;
import com.mxc.links.entity.Links;
import com.mxc.links.service.LinksService;

@RequestMapping(value="path/links")
@Controller
public class LinksController {

	@Autowired
	LinksService linksService;

	@ModelAttribute(value="links")
	public Links get(Links links) {
		if(StringUtils.isEmpty(links.getId())){
			links = new Links();
		}else {
			links = linksService.get(links);
		}
		return links;
	}
	
	/**
	 * 查看所有链接
	 * @param links
	 * @param model
	 * @return
	 */
	@RequestMapping(value="findList")
	public String findList(Links links, Model model) {
		List<Links> list = linksService.findList(links);
		for(Links each:list) {
			System.out.println(each);
		}
		model.addAttribute("linksList", list);
		return "webPage/page/links/linksList";
	}
	
	/**
	 * 编辑、查看
	 * @param links
	 * @param model
	 * @return
	 */
	@RequestMapping(value="form")
	public String form(Links links, Model model) {
		links = linksService.get(links);
		model.addAttribute("linksList", links);
		return "webPage/page/links/linksAdd";
	}
	
	
}
