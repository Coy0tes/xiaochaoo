package com.mxc.user.test;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mxc.sysMenu.dao.SysMenuDao;
import com.mxc.sysMenu.entity.SysMenu;
import com.mxc.sysMenu.service.SysMenuService;
import com.mxc.user.dao.UserDao;
import com.mxc.user.entity.User;

@Controller
public class Test01 {
	
	private SqlSessionFactory getSqlSessionFactory() throws IOException{
		String resource = "mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		return new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	
	@Autowired
	private SysMenuService sysMenuService;
	
	@Test
	public void testSysMenu() {
		SysMenu sysMenu = new SysMenu();
//		List<SysMenu> list = sysMenuService.findList(sysMenu);
		sysMenu.setId("1");
		sysMenu = sysMenuService.get(sysMenu);
		System.out.println(sysMenu);
//		for(SysMenu each:list) {
//			System.out.println(each);
//		}
		
	}
	@Test
	public void testSysMenu2() {
		try {
			SysMenu sysMenu = new SysMenu();
			List<SysMenu> list = sysMenuService.findList(sysMenu);
			for(SysMenu each:list) {
				System.out.println(each);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	@Test
	public void testSysMenu3() {
		try {
			List<SysMenu> list = sysMenuService.findListNull();
			for(SysMenu each:list) {
				System.out.println(each);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	
	@Test
	public void test02() throws IOException{
		SqlSessionFactory sqlSessionFactory = getSqlSessionFactory();
		SqlSession openSession = sqlSessionFactory.openSession();
		try {
			UserDao mapper = openSession.getMapper(UserDao.class);
			List<User> lists = mapper.getUserAll();
			for(User each:lists)
			System.out.println(each);
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			openSession.close();
		}
	}
		
		
	/**
	 * 用户
	 * 测试
	 * @return
	 */
	@RequestMapping(value="getUserAll")
	public String getUserAll() {
//		Map<String, String> map = new HashMap<String, String>();
		System.out.println("test..");
		return "userList";
	}
	
	
	/**
	 * UUID生成随机id测试
	 */
	@Test
	public void test04() {
		UUID randomUUID = UUID.randomUUID();
		System.out.println(randomUUID.toString().replaceAll("-", ""));
	}
	
}
