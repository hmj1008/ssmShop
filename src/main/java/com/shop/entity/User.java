package com.shop.entity;

public class User {
	private Integer id;
	private String name;
	private String password;
	private Float account_balance;
	private String nick_name;
	private String email;
	private String role;
	private String headimg_url;
	private	Integer open;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Float getAccount_balance() {
		return account_balance;
	}
	public void setAccount_balance(Float account_balance) {
		this.account_balance = account_balance;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getHeadimg_url() {
		return headimg_url;
	}
	public void setHeadimg_url(String headimg_url) {
		this.headimg_url = headimg_url;
	}
	public Integer getOpen() {
		return open;
	}
	public void setOpen(Integer open) {
		this.open = open;
	}
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public User(Integer id, String name, String password,
			Float account_balance, String nick_name, String email, String role,
			String headimg_url, Integer open) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.account_balance = account_balance;
		this.nick_name = nick_name;
		this.email = email;
		this.role = role;
		this.headimg_url = headimg_url;
		this.open = open;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password
				+ ", account_balance=" + account_balance + ", nick_name="
				+ nick_name + ", email=" + email + ", role=" + role
				+ ", headimg_url=" + headimg_url + ", open=" + open + "]";
	}
	
	
}
