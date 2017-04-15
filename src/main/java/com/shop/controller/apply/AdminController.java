package com.shop.controller.apply;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.controller.base.BaseController;
import com.shop.dao.GoodsDao;
import com.shop.entity.Category;
import com.shop.entity.Goods;
import com.shop.entity.User;
import com.shop.service.GoodsService;
import com.shop.service.UserService;


@Controller  
@RequestMapping("/admin")
public class AdminController extends BaseController{
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsServie;
	
	@Autowired
	private GoodsDao goodsDao;
	
	@RequestMapping(value="/login")
	public void login(User user,HttpSession session,HttpServletResponse response){
		logger.info("start login:username{},password:{}",user.getName(),user.getPassword());
		user = userService.userLogin(user);
		map = new HashMap<String, Object>();
		if(user!=null){
			System.out.println("用户角色："+user.getRole());
			if (user.getRole().equals("admin")){
				//在Session里保存信息  
	    		session.setAttribute("user_name", user.getName());
	    		session.setAttribute("password", user.getPassword());
				map.put("user", user);
			}else{
				System.out.println("不是管理员账号");
				map.put("error", "不是管理员账号,没有权限登录后台管理！");
			}
		}else{
			System.out.println("账号或者密码错误！");
			map.put("error", "账号或者密码错误！");
		}
		writeJson(map, response);
	}
	
	//
	@RequestMapping(value="/logout")
	@ResponseBody
	public boolean logout(HttpSession session){
		session.invalidate();
		return true;
		//return "admin/index";
	}
	
	@RequestMapping(value="/categoryData")
	public void getCategoryData(HttpServletResponse response){
		List<Category> listCategroy = goodsDao.findAllCategory();//goodsServie.getCategorylist();
		map = new HashMap<String, Object>();
		map.put("list_categroy", listCategroy);
		writeJson(map, response);
	}
	
	@RequestMapping(value="/category_update")
	public void category_add(Category category,HttpServletResponse response){
		logger.info("修改分类==>{}",category);
		int i = goodsDao.updateCategoryById(category);
		logger.info("修改分类后==>{}",i);
		map = new HashMap<String, Object>();
		map.put("data", i);
		writeJson(map, response);
	}
	
	@RequestMapping(value="/category_save")
	public void category_save(Category category,HttpServletResponse response){
		logger.info("新增分类==>{}",category);
		int i = goodsDao.insertCategory(category);
		logger.info("新增分类后==>{}:{}",i,category);
		map = new HashMap<String, Object>();
		map.put("data", i);
		map.put("category", category);
		writeJson(map, response);
	}
	
	@RequestMapping(value="/GoodsData")
	public void getGoodsData(HttpServletResponse response){
		List<Goods> listGoods = goodsDao.findAllGoods();
		map = new HashMap<String, Object>();
		map.put("list_goods", listGoods);
		writeJson(map, response);
	}
	
	@RequestMapping(value="/goods_update")
	public void goods_update(Goods goods,HttpServletResponse response){
		logger.info("修改商品==>{}",goods);
		int i = goodsDao.updateGoodsInfo(goods);
		logger.info("修改商品后==>{}",i);
		map = new HashMap<String, Object>();
		map.put("data", i);
		writeJson(map, response);
	}
	
	@RequestMapping(value="/goods_save")
	public void goods_save(Goods goods,HttpServletResponse response){
		logger.info("新增商品==>{}",goods);
		int i = goodsDao.insertGoods(goods);
		logger.info("新增商品后==>{}{}",i,goods);
		map = new HashMap<String, Object>();
		map.put("i", i);
		map.put("goods", goods);
		writeJson(map, response);
	}
}
