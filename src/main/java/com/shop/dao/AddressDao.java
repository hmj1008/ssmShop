package com.shop.dao;

import java.util.List;

import com.shop.entity.Address;

public interface AddressDao {
	
	//插入收货地址记录
	public int insertAddress(Address address);
	
	//更新收货地址记录信息:address_detail,recive_phone,recive_name
	public int updateAddressById(Address address);
	
	//更新地址状态
	public int updateAddressOpenById(Address address);
	
	//查询用户所有有效地址信息
	public List<Address> findAddressesByUserId(int userId);
}
