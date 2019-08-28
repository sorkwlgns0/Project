package shopping.domain;

import org.apache.ibatis.type.Alias;

@Alias("memberVO")
public class MemberVO {
	private int seq;
	private String id;
	private String password;
	private String name;
	private String address;
	private String mobile;
	private String email;
	private boolean agree;
	private int point;
	private int howmuch;
	
	public int getHowmuch() {
		return howmuch;
	}
	public void setHowmuch(int howmuch) {
		this.howmuch = howmuch;
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public boolean isAgree() {
		return agree;
	}
	public String getPasswordConfirm() {
		return passwordConfirm;
	}
	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}
	public void setAgree(boolean agree) {
		this.agree = agree;
	}
	private int birth;
	private String passwordConfirm;
	
	public MemberVO() {}
	public MemberVO(int seq, String id, String password, String name, String address, String mobile, String email, int birth,int point) {
		this.seq = seq;
		this.id = id;
		this.password = password;
		this.address = address;
		this.name = name;
		this.mobile = mobile;
		this.birth = birth;
		this.email = email;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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

	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
}