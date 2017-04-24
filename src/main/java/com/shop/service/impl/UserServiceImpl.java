package com.shop.service.impl;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.shop.dao.UserDao;
import com.shop.entity.Address;
import com.shop.entity.User;
import com.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserDao userDao;
	//md5盐值字符串，用于混淆MD5
	private final String md5_slat="jkls#1fj143423hkfhn#@jfh7981346!@#$$";
	
	private String getMD5(String pass){
		String base = pass+"/"+md5_slat;
		String md5 = DigestUtils.md5DigestAsHex(base.getBytes());
		return md5;
	}
	public User userRegister(User user) {
		if (userDao.findUserByName(user.getName()) == 0){
			user.setPassword(getMD5(user.getPassword()));
			userDao.insertUser(user);
			return userDao.findUserById(user);
		}
		return null;
	}

	public User userLogin(User user) {
		String inputPassword = user.getPassword();
		User result_user = userDao.loginUser(user);
		if (result_user!=null){
			System.out.println("db_pass:"+result_user.getPassword());
			System.out.println("user_pass_md5:"+getMD5(inputPassword));
			if (result_user.getPassword().equals(getMD5(inputPassword))){
				return result_user;
			}
		}
		return null;
	}

	public boolean userLogout() {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean userChangePassword(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	public User userUpdateInfo(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	public Float userAddMoney(Float money) {
		// TODO Auto-generated method stub
		return null;
	}

	public Address userAddAddress(Address address) {
		// TODO Auto-generated method stub
		return null;
	}

	public Address userUpdateAddress(Address address) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean userQuitAddress(int addressId) {
		// TODO Auto-generated method stub
		return false;
	}

}
