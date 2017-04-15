package com.shop.entity;

public class AccountBalanceRecord {
	private Integer id;
	private User user;
	private Float account;
	private String info;
	private Order order;
	private String create_date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Float getAccount() {
		return account;
	}
	public void setAccount(Float account) {
		this.account = account;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public AccountBalanceRecord(Integer id, User user, Float account,
			String info, Order order, String create_date) {
		super();
		this.id = id;
		this.user = user;
		this.account = account;
		this.info = info;
		this.order = order;
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "AccountBalanceRecord [id=" + id + ", user=" + user
				+ ", account=" + account + ", info=" + info + ", order="
				+ order + ", create_date=" + create_date + "]";
	}
	
	
}
