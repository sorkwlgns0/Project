package shopping.domain;

import org.apache.ibatis.type.Alias;

@Alias("ShoppingVO")
public class ShoppingVO {
	private int seq;
	private String name;
	private int price;
	private String image;
	private int hits;
	private int buys;
	private int gets;
	private int category;
	private int size1;
	private String cmt;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getBuys() {
		return buys;
	}
	public void setBuys(int buys) {
		this.buys = buys;
	}
	public int getGets() {
		return gets;
	}
	public void setGets(int gets) {
		this.gets = gets;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}

	public int getSize1() {
		return size1;
	}
	public void setSize1(int size1) {
		this.size1 = size1;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
}
