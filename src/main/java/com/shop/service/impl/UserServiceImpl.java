package com.shop.service.impl;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.UserDao;
import com.shop.entity.Address;
import com.shop.entity.User;
import com.shop.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserDao userDao;

	public User userRegister(User user) {
		if (userDao.findUserByName(user.getName()) == 0){
			userDao.insertUser(user);
			return userDao.findUserById(user);
		}
		return null;
	}

	public User userLogin(User user) {
		User result_user = userDao.loginUser(user);
//		if (result_user != null){
//    		return result_user;
//		}
		return result_user;
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
