package com.mxc.sys.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mxc.sys.entity.User;
import com.mxc.sys.service.LoginService;

/**
 * 登录注册判断
 * @author PG01
 *
 */

//这里用了@SessionAttributes，可以直接把model中的user(也就key)放入其中
//这样保证了session中存在user这个对象
@Controller
@RequestMapping(value="login")
@SessionAttributes("login")
public class LoginController{
	
	@Autowired
	private LoginService loginService;
	
	/**
	 * get的条件查询是logname 
	 * 登录页面效验
	 * @param login
	 * @return
	 */
	@ModelAttribute
	public User get(User login) {
		if(login!=null) {
			login = loginService.get(login);
		}else {
			login = new User();
		}
		return login; 
	}

	//正常访问login页面
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
	
    /**
     * 表单提交数据
     * @param login
     * @return
     */
	@RequestMapping(value= {"checkLogin",""})
	public String checkLogin(User login, Model model, RedirectAttributes redirectAttributes) {
		String returnPath = "/index";
		User user = loginService.findList(login);
		System.out.println("123123123123");
		if(user!=null) {
			if(user.getUserName().equals(login.getUserName()) && user.getPassword().equals(login.getPassword())) {
				model.addAttribute("login", login);
			}else {
				returnPath = "/webPage/page/sys_page/index_login";
				model.addAttribute("msg", "用户名或密码不正确！");
				return returnPath;
			}
		}else {
			returnPath = "/webPage/page/sys_page/index_login";
			model.addAttribute("msg", "用户名不存在");
			System.out.println("msg");
			return returnPath;
		}
		return returnPath;
	}
	
	@RequestMapping(value="outLogin")
	public String outLogin(HttpSession session) {
		// 通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "/webPage/page/sys_page/index_login";
	}

}
