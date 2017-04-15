package com.shop.interceptor;

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import org.springframework.web.servlet.HandlerInterceptor;  
import org.springframework.web.servlet.ModelAndView;  
/** 
 * 登录认证的拦截器 
 */  
public class LoginInterceptor implements HandlerInterceptor{  
  
    /** 
     * Handler执行完成之后调用这个方法 
     */  
    public void afterCompletion(HttpServletRequest request,  
            HttpServletResponse response, Object handler, Exception exc)  
            throws Exception {  
          
    }  
  
    /** 
     * Handler执行之后，ModelAndView返回之前调用这个方法 
     */  
    public void postHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler, ModelAndView modelAndView) throws Exception {  
    }  
  
    /** 
     * Handler执行之前调用这个方法 
     */  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,  
            Object handler) throws Exception {  
        //获取请求的URL  
        String url = request.getRequestURI();  
        if(url.indexOf("resource")>=0){
        	return true;
        }
        
        if(url.indexOf("login")>=0){
        	return true;
        }
        //URL:login.jsp是公开的;除了login.jsp是可以公开访问的，其它的URL都进行拦截控制  
        //System.out.println("进入登录拦截器");
        HttpSession session = request.getSession();  
        if(url.indexOf("admin")>=0){  
            String username = (String)session.getAttribute("user_name");  
            if(username == null){  
            	System.out.println("用户未登录，显示登录界面...");
            	request.getRequestDispatcher("/WEB-INF/admin/login.jsp").forward(request, response);   
            	return false; 
            }else{ 
            	 return true;  
            }
        }  
        //获取Session    
//        String username = (String)session.getAttribute("user_name");  
//        if(username != null){  
//            return true;  
//        }  
        //不符合条件的，跳转到登录界面  
//        request.getRequestDispatcher("/login.jsp").forward(request, response);  
//        return false;  
        return true;  
    }  
  
}  
