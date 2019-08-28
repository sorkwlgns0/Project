package shopping.domain;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;
@Alias("BuyVO")
public class BuyVO {
	 private int buynum;
	 private String id;
	 private Timestamp regdate;
	 private String name;
	 private String address;
	 private int buylist;
	 private String buyname;
	 private int amount;
	 private int price;
	 private int status;
	 private int sizee;
	 private String image;
	 
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSizee() {
		return sizee;
	}
	public void setSizee(int sizee) {
		this.sizee = sizee;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getBuylist() {
		return buylist;
	}
	public void setBuylist(int buylist) {
		this.buylist = buylist;
	}
	public String getBuyname() {
		return buyname;
	}
	public void setBuyname(String buyname) {
		this.buyname = buyname;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
