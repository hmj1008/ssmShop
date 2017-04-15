package com.shop.entity;

public class Goods {
	private Integer id;
	private String name;
	private String short_info;
	private Category category;
	private String pic;
	private int open;
	private String create_date;
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
	public String getShort_info() {
		return short_info;
	}
	public void setShort_info(String short_info) {
		this.short_info = short_info;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
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
	public Goods(Integer id, String name, String short_info, Category category,
			String pic, int open, String create_date) {
		super();
		this.id = id;
		this.name = name;
		this.short_info = short_info;
		this.category = category;
		this.pic = pic;
		this.open = open;
		this.create_date = create_date;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", name=" + name + ", short_info="
				+ short_info + ", category=" + category + ", pic=" + pic
				+ ", open=" + open + ", create_date=" + create_date + "]";
	}
	
	
}
