package com.shop.entity;

public class Category {
	private Integer id;
	private String name;
	private Integer open;
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
	public Integer getOpen() {
		return open;
	}
	public void setOpen(Integer open) {
		this.open = open;
	}
	
	
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(Integer id, String name, Integer open) {
		super();
		this.id = id;
		this.name = name;
		this.open = open;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", open=" + open + "]";
	}
	
	
    
}