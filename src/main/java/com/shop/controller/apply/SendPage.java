package com.shop.controller.apply;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SendPage {
	
	 @RequestMapping(value = "admin")
     public String index(){
		 System.out.println("请求进入商城后台管理页面");
    	 return "admin/index";
     }
	 @RequestMapping(value = "admin/category")
     public String categoryPage(){
    	 return "admin/category";
     }
	 @RequestMapping(value = "admin/goods")
     public String goodsPage(){
    	 return "admin/goods";
     }
	 @RequestMapping(value = "admin/goodsDetail")
     public String goodsDetailPage(){
    	 return "admin/goodsDetail";
     }
	 
	 @RequestMapping(value = "categoryAddPage")
     public String sendAddPage(){
    	 return "category/save";
     }
	 @RequestMapping(value = "categoryUpdatePage")
     public String sendUpdatePage(){
    	 return "category/update";
     }
	 
	 @RequestMapping(value = "ProductPage")
     public String ProductPage(){
    	 return "product/query";
     }
	 @RequestMapping(value = "ProductSavePage")
     public String ProductSavePage(){
    	 return "product/save";
     }
}
