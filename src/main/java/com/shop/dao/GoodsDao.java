package com.shop.dao;

import java.util.List;

import com.shop.entity.Category;
import com.shop.entity.Goods;
import com.shop.entity.GoodsDetail;

public interface GoodsDao {
	
	//插入商品分类
	public int insertCategory(Category category);
	
	//更新分类
	public int updateCategoryById(Category category);
	
	//查询分类
	public List<Category> findAllCategory();
	
	//插入商品
	public int insertGoods(Goods goods);
	public int insertGoodsDetail(GoodsDetail goodsDetail);
	
	//更新商品信息 name,short_info,pic,category_id,open
	public int updateGoodsInfo(Goods goods);
	//更新商品信息  price,short_info,number,pic,detail_info,open
	public int updateGoodsDeatilInfo(GoodsDetail goodsDetail);
	
	//按类查询商品
	public List<Goods> findGoodsListByCategoryId(int categoryId);
	public List<GoodsDetail> findGoodsDetailListByGoodsId(int goodsId);
	
	//通过ID查询商品
	public GoodsDetail findGoodsDetailById(int goodsDetailId);
	
	public List<Goods> findAllGoods();
	
}
