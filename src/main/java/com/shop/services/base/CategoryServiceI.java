package com.shop.services.base;

import java.util.List;
import java.util.Map;

import com.shop.model.Category;

public interface CategoryServiceI {

	public List<Category> queryCategoryAll(Map<String, Object> map);

	public int countTypeAll(String type);

	public void deleteCategory(Integer[] idkey);

	public void saveCategory(Category category);

	public void updateCategory(Category category);

	public List<Category> findProductType();
	
	public List<Category> getTypeByHot(int ishot); 
}
