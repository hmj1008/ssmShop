package com.shop.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.GoodsDao;
import com.shop.entity.Category;
import com.shop.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private GoodsDao goodsDao ;
	
	public List<Category> getCategorylist() {
		logger.info("获取全部商品分类");
		return goodsDao.findAllCategory();
	}

	public int updateCategoryById() {
		// TODO Auto-generated method stub
		return 0;
	}

}
