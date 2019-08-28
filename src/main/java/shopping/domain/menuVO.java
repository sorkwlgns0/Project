package shopping.domain;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("menuVO")
public class menuVO {
	private int seq;
	private String name;
	private int price;
	private MultipartFile filename;
	private String image;
	private int hits;
	private int buys;
	private int stocks;
	private int category;
	private int sizee;
	private String cmt;
	private int sale;

	
	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public MultipartFile getFilename() {
		return filename;
	}

	public void setFilename(MultipartFile filename) {
		this.filename = filename;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public menuVO() {}
	public menuVO(int seq, String name, int price, MultipartFile filename, String image, int hits, int buys, int stocks, int category, int sizee, String cmt, int sale) {
		super();
		this.seq = seq;
		this.name = name;
		this.price = price;
		this.image = image;
		this.filename = filename;
		this.hits = hits;
		this.buys = buys;
		this.stocks = stocks;
		this.category = category;
		this.sizee = sizee;
		this.cmt = cmt;
		this.sale = sale;

	}

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

	public int getStocks() {
		return stocks;
	}

	public void setStocks(int stocks) {
		this.stocks = stocks;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getSizee() {
		return sizee;
	}

	public void setSizee(int sizee) {
		this.sizee = sizee;
	}

	public String getCmt() {
		return cmt;
	}

	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
}	