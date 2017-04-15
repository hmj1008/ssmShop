package com.shop.entity;

public class Order {
	private Integer id;
	private String order_no;
	private String state;
	private User user;
	private Address address;
	private Float count_price;
	private int count_number;
	private Integer open;
	private String create_date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getOrder_no() {
		return order_no;
	}
	public void setOrder_no(String order_no) {
		this.order_no = order_no;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Float getCount_price() {
		return count_price;
	}
	public void setCount_price(Float count_price) {
		this.count_price = count_price;
	}
	public int getCount_number() {
		return count_number;
	}
	public void setCount_number(int count_number) {
		this.count_number = count_number;
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
	public Order(Integer id, String order_no, String state, User user,
			Address address, Float count_price, int count_number,
			Integer open, String create_date) {
		super();
		this.id = id;
		this.order_no = order_no;
		this.state = state;
		this.user = user;
		this.address = address;
		this.count_price = count_price;
		this.count_number = count_number;
		this.open = open;
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", order_no=" + order_no + ", state="
				+ state + ", user=" + user + ", address=" + address
				+ ", count_price=" + count_price + ", count_number="
				+ count_number + ", open=" + open + ", create_date="
				+ create_date + "]";
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
