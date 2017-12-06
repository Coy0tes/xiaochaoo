package com.mxc.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mxc.user.entity.User;
import com.mxc.user.service.UserService;

@RequestMapping(value="mxc/user/")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	/**
	 * 查询所有用户
	 * @param model
	 * @return
	 */
	@RequestMapping(value="getUserAll")
	public String getUserAll(Model model) {
		
		List<User> lists = userService.getUserAll();
		model.addAttribute("users", lists);
		return "user/userList";
	}
	
	@RequestMapping(value="getUserById")
	public String getUserById(User user, Model model, HttpServletRequest request) {
		User userById = userService.getUserById(user);
		model.addAttribute("userById", userById);
		return "userForm";
	}
	
	@RequestMapping(value="addUserList")
	public String addUserList(User user, Model model) {
		
		return "user/userForm";
	}
	
	
	/**
	 * 新增或者更新
	 * @return
	 */
	@RequestMapping(value="save")
	public String save(User user, Model model) {
		if(user.getId()==null) {
			userService.addUser(user);
			model.addAttribute("msg","添加成功！");
		}else {
			userService.update(user);
			model.addAttribute("msg","保存成功！");
		}
		return "user/userList";
	}
	
	
	
	@RequestMapping(value="deleteUser")
	public String deleteUser(User user, Model model) {
		userService.delete(user);
		model.addAttribute("msg","删除成功！");
		return "user/userList";
	}
	
	@RequestMapping(value="updateList")
	public String updateList(User user, Model model) {
		user = userService.getUserById(user);
		model.addAttribute("userById", user);
		return "user/userList";
	}
	@RequestMapping(value="updateSave")
	public String updateSave(User user, Model model) {
		user = userService.update(user);
		model.addAttribute("msg", "xiugai chengg");
		return "user/userList";
	}
	
	
}
