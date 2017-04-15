package com.shop.entity;

public class OrderStateTrack {
	private Integer id;
	private String state;
	private Order order;
	private String create_date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
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
	public OrderStateTrack(Integer id, String state, Order order,
			String create_date) {
		super();
		this.id = id;
		this.state = state;
		this.order = order;
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "OrderStateTrack [id=" + id + ", state=" + state + ", order="
				+ order + ", create_date=" + create_date + "]";
	}
	
	
}
