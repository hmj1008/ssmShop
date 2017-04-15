package com.shop.entity;

public class SubOrder {
	private Integer id;
	private Order order;
	private GoodsDetail goodsDetail;
	private Integer number;
	private Integer open;
	private String create_date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public GoodsDetail getGoodsDetail() {
		return goodsDetail;
	}
	public void setGoodsDetail(GoodsDetail goodsDetail) {
		this.goodsDetail = goodsDetail;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getOpen() {
		return open;
	}
	public void setOpen(Integer open) {
		this.open = open;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public SubOrder(Integer id, Order order, GoodsDetail goodsDetail,
			Integer number, Integer open, String create_date) {
		super();
		this.id = id;
		this.order = order;
		this.goodsDetail = goodsDetail;
		this.number = number;
		this.open = open;
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "SubOrder [id=" + id + ", order=" + order + ", goodsDetail="
				+ goodsDetail + ", number=" + number + ", open=" + open
				+ ", create_date=" + create_date + "]";
	}
	public SubOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
