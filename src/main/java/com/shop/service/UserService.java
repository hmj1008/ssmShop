package com.shop.service;

import javax.servlet.http.HttpSession;

import com.shop.entity.Address;
import com.shop.entity.GoodsDetail;
import com.shop.entity.User;

/*
 * 业务接口：站在使用者的角度来设计接口
 * 三个方面：方法定义粒度，参数，返回类型（return 类型、异常）
 */
public interface UserService {
	
	//用户注册
	User userRegister(User user);
	
	//用户登录
	User userLogin(User user);
	
	//用户登出
	boolean userLogout();
	
	//用户修改密码
	boolean userChangePassword(User user);
	
	//用户修改个人信息
	User userUpdateInfo(User user);
	
	//充值
	Float userAddMoney(Float money);
	
	//添加收货地址
	Address userAddAddress(Address address);
	
	//修改收货地址
	Address userUpdateAddress(Address address);
	
	//弃用收货地址
	boolean userQuitAddress(int addressId);
	
}
