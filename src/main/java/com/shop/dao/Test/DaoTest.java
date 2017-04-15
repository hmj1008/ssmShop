package com.shop.dao.Test;

import org.junit.Test;
//import com.mchange.v2.c3p0.ComboPooledDataSource;

import org.junit.runner.RunWith;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.shop.dao.AddressDao;
import com.shop.dao.GoodsDao;
import com.shop.dao.OrderDao;
import com.shop.dao.ShopCartDao;
import com.shop.dao.UserDao;
import com.shop.entity.Address;
import com.shop.entity.Category;
import com.shop.entity.Goods;
import com.shop.entity.GoodsDetail;
import com.shop.entity.Order;
import com.shop.entity.ShopCart;
import com.shop.entity.SubOrder;
import com.shop.entity.User;

import javax.annotation.Resource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.*;

import static org.junit.Assert.*;
/**
 * 配置Spring和Junit整合,junit启动时加载springIOC容器
 * spring-test,junit
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class DaoTest {


    //注入Dao实现类依赖
	@Resource
    private UserDao userDao;
	
	@Resource
	private AddressDao addressDao;
	
	@Resource
	private GoodsDao goodsDao;
	
	@Resource
	private ShopCartDao shopCartDao;
	
	@Resource
	private OrderDao orderDao;
   
	@Test
	public void testuserDao() throws Exception{
//		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
//		String data_str = df.format(new Date());
//		System.out.println(data_str);// new Date()为获取当前系统时间
//		Order order = new Order();
//		order.setOrder_no("shop-"+data_str);
//		order.setCount_number(0);
//		order.setCount_price((float) 0);
//		order.setOpen(0);
//		order.setState("start");
//		User user = new User();
//		user.setId(8);
//		Address address = new Address();
//		address.setId(8);
//		order.setAddress(address);
//		order.setUser(user);
//		orderDao.insertOrder(order);
//		System.out.println(order.getId());
		
//		SubOrder subOrder = new SubOrder();
//		Order order = new Order();
//		order.setId(3);
//		subOrder.setOrder(order);
//		subOrder.setNumber(4);
//		GoodsDetail goodsDetail = new GoodsDetail();
//		goodsDetail.setId(2);
//		subOrder.setGoodsDetail(goodsDetail);
//		subOrder.setOpen(1);
//		orderDao.inserSubOrder(subOrder);
//		System.out.println(subOrder.getId());
		
//		SubOrder subOrder = new SubOrder();
//		subOrder.setId(1);
//		subOrder.setNumber(5);
//		orderDao.updateSubOrderNumOrGoodsDetail(subOrder);
		
//		SubOrder subOrder = new SubOrder();
//		subOrder.setId(1);
//		subOrder.setOpen(1);
//		orderDao.updateSubOrderOpen(subOrder);
		
//		List<SubOrder> listSubOrder = orderDao.findSubOrderByOrderId(3);
//		System.out.println(listSubOrder);
//		int count_number = 0;
//		float count_price = (float) 0.0;
//		for (int i=0;i<listSubOrder.size();i++){
//			SubOrder suborder = listSubOrder.get(i);
//			count_number = count_number + suborder.getNumber();
//			count_price = count_price + suborder.getNumber()*suborder.getGoodsDetail().getPrice();
//			System.out.println(suborder.getNumber());
//			System.out.println(suborder.getGoodsDetail().getPrice());
//		}
//		Order order = new Order();
//		order.setId(3);
//		order.setCount_number(count_number);
//		order.setCount_price(count_price);
//		order.setOpen(1);
//		orderDao.updateOrderNumPriOpen(order);

	}
}
