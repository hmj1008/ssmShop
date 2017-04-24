package com.shop.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.util.DigestUtils;

public class UserPasswordUtil {
	
	public static void main(String[] args) {  
        	String password1 = "admin.1234";  
        	//String password2 = "abc185";
        	String md5_slat="jkls#1fj143423hkfhn#@jfh7981346!@#$$";
//        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();  
//        System.out.println(passwordEncoder.encode(password)); 
		String base1 = password1+"/"+md5_slat;
		System.out.println(DigestUtils.md5DigestAsHex(base1.getBytes()));
}  


}
