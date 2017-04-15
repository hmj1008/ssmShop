package com.shop.entity;

public class ShopCart {
	private int id;
	private User user;
	private GoodsDetail goodsDetail;
	private int count_number;
	private int open;
	private String create_date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public GoodsDetail getGoodsDetail() {
		return goodsDetail;
	}
	public void setGoodsDetail(GoodsDetail goodsDetail) {
		this.goodsDetail = goodsDetail;
	}
	public int getCount_number() {
		return count_number;
	}
	public void setCount_number(int count_number) {
		this.count_number = count_number;
	}
	public int getOpen() {
		return open;
	}
	public void setOpen(int open) {
		this.open = open;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public ShopCart(int id, User user, GoodsDetail goodsDetail,
			int count_number, int open, String create_date) {
		super();
		this.id = id;
		this.user = user;
		this.goodsDetail = goodsDetail;
		this.count_number = count_number;
		this.open = open;
		this.create_date = create_date;
	}
	public ShopCart() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ShopCart [id=" + id + ", user=" + user + ", goodsDetail="
				+ goodsDetail + ", count_number=" + count_number + ", open="
				+ open + ", create_date=" + create_date + "]";
	}
	
}
