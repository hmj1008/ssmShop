package com.shop.dao;

import java.util.List;

import com.shop.entity.ShopCart;

public interface ShopCartDao {
	//添加商品到购物车
	public int insertGoodsDetailToCart(ShopCart shopCart);
	
	//从购物车里删除记录
	public int deleteShopCartById(int id);
	
	//更新购物车里记录
	public int updateShopCartById(ShopCart shopCart);
	
	//查询用户的购物车记录
	public List<ShopCart> findShopCartListByUserId(int userId);
}
