package com.shop.dao;

import com.shop.entity.User;

public interface UserDao {
	
	//可以插入 name,password,account_balance,nick_name,email,role,headimg_url,open
	//返回插入记录的主键
	public int insertUser(User user);
	
	//查询用户名是否存在，返回1：存在,0：不存在
	public int findUserByName(String name);
	
	//通过用户id查询用户,返回用户实体
	public User findUserById(User user);
	
	//用户登录，检查用户名和密码，以及open
	public User loginUser(User user);
	
	//更新用户nick_name,email,role,headimg_url
	public int updateUserInfoById(User user);
	
	//通过用户id更新用户密码
	public int updateUserPasswordById(User user);
	
	//更新用户状态 open
	public int updateUserOpenById(User user);
	
	//更新用户账户数额
	public int updateUserAccountBalanceById(User user);

}
