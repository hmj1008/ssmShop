package com.shop.service;

import java.util.List;

import com.shop.entity.Category;

public interface GoodsService {
	//获取分类数据
	List<Category> getCategorylist();
	
	//修改分类名
	int updateCategoryById();
}
