package com.shop.dao;

import java.util.List;

import com.shop.entity.Order;
import com.shop.entity.SubOrder;

public interface OrderDao {
	//创建订单
	//TODO TEST...
	public int insertOrder(Order order);
	
	//添加子订单，未生效
	public int inserSubOrder(SubOrder subOrder);
	
	//更新子订单信息 总数,商品类型
	public int updateSubOrderNumOrGoodsDetail(SubOrder subOrder);
	
	//子订单生效
	public int updateSubOrderOpen(SubOrder subOrder);
	
	//订单生效，更新 总价格，总数量，open
	public int updateOrderNumPriOpen(Order order);
	
	//修改订单状态
	public int updateOrderState(Order order);
	
	//查询订单
	public Order findOrderById(int id);
	
	//查询子订单
	public List<SubOrder> findSubOrderByOrderId(int OrderId);
	
	//查询用户所有订单
	public List<Order> findOrderListByUserId(int userId);
	
}
