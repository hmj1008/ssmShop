package com.shop.entity;

public class GoodsDetail {
	private Integer id;
	private Float price;
	private String short_info;
	private Integer number;
	private String pic;
	private String detail_info;
	private Goods goods;
	private Integer open;
	private String create_date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public String getShort_info() {
		return short_info;
	}
	public void setShort_info(String short_info) {
		this.short_info = short_info;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getDetail_info() {
		return detail_info;
	}
	public void setDetail_info(String detail_info) {
		this.detail_info = detail_info;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
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
	public GoodsDetail(Integer id, Float price, String short_info,
			Integer number, String pic, String detail_info, Goods goods,
			Integer open, String create_date) {
		super();
		this.id = id;
		this.price = price;
		this.short_info = short_info;
		this.number = number;
		this.pic = pic;
		this.detail_info = detail_info;
		this.goods = goods;
		this.open = open;
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "GoodsDetail [id=" + id + ", price=" + price + ", short_info="
				+ short_info + ", number=" + number + ", pic=" + pic
				+ ", detail_info=" + detail_info + ", goods=" + goods
				+ ", open=" + open + ", create_date=" + create_date + "]";
	}
	public GoodsDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
