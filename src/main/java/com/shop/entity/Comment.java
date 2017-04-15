package com.shop.entity;

public class Comment {
	private Integer id;
	private User user;
	private SubOrder subOrder;
	private String comment_info;
	private Integer star;
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
	public SubOrder getSubOrder() {
		return subOrder;
	}
	public void setSubOrder(SubOrder subOrder) {
		this.subOrder = subOrder;
	}
	public String getComment_info() {
		return comment_info;
	}
	public void setComment_info(String comment_info) {
		this.comment_info = comment_info;
	}
	public Integer getStar() {
		return star;
	}
	public void setStar(Integer star) {
		this.star = star;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public Comment(Integer id, User user, SubOrder subOrder,
			String comment_info, Integer star, String create_date) {
		super();
		this.id = id;
		this.user = user;
		this.subOrder = subOrder;
		this.comment_info = comment_info;
		this.star = star;
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", user=" + user + ", subOrder="
				+ subOrder + ", comment_info=" + comment_info + ", star="
				+ star + ", create_date=" + create_date + "]";
	}
	
	
}
