package com.shop.dao;

import java.util.List;
import java.util.Map;

import com.shop.entity.AccountBalanceRecord;

public interface BalanceRecordDao {
	
	//插入消费记录
	public int insertAccountBalanceRecord(AccountBalanceRecord accountBalanceRecord);
	
	//按用户查询消费记录
	//TODO
	public List<AccountBalanceRecord> findAccountBalanceRecordListByUserId(Map<String, Object> map);
	
	//按订单查询消费记录
	//TODO
	public List<AccountBalanceRecord> findAccountBalanceRecordListByOrderId(int orderId);

}
