package com.shop.service.Test;
import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shop.entity.User;
import com.shop.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml",
"classpath:spring/spring-service.xml"})
public class UserServiceTest {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//注入Service
	@Autowired
	private UserService userService;
	
	@Test
	public void testGetSeckillList() throws Exception{
		User user =new User();
		user.setName("hmj");
		user.setPassword("hmj.1234");
		user.setRole("normal");
		user.setOpen(1);
		User user2 = userService.userRegister(user);
		System.out.println(user2);
		logger.info("user1:{}",user2);
	}
}
