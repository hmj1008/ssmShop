package com.shop.entity;

public class Address {
	private Integer id;
	private User user;
	private String address_detail;
	private String recive_phone;
	private String recive_name;
	private String create_date;
	private int open;
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
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getRecive_phone() {
		return recive_phone;
	}
	public void setRecive_phone(String recive_phone) {
		this.recive_phone = recive_phone;
	}
	public String getRecive_name() {
		return recive_name;
	}
	public void setRecive_name(String recive_name) {
		this.recive_name = recive_name;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public int getOpen() {
		return open;
	}
	public void setOpen(int open) {
		this.open = open;
	}
	public Address(Integer id, User user, String address_detail,
			String recive_phone, String recive_name, String create_date,
			int open) {
		super();
		this.id = id;
		this.user = user;
		this.address_detail = address_detail;
		this.recive_phone = recive_phone;
		this.recive_name = recive_name;
		this.create_date = create_date;
		this.open = open;
	}
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", user=" + user + ", address_detail="
				+ address_detail + ", recive_phone=" + recive_phone
				+ ", recive_name=" + recive_name + ", create_date="
				+ create_date + ", open=" + open + "]";
	}
	
	
}
