package shopping.domain;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("BoardVO")
public class BoardVO {
	private int num;
	private String writer;
	private String subject;
	private String pass;
	private int readcount;
	private Timestamp regdate;
	private String content;
	private int boardno;
	private String filename;
	private int secret;
	private int menu;


	public BoardVO() {}
	public BoardVO(int num, String writer, String subject, String pass, int readcount, Timestamp regdate, String content, int boardno, String filename, int secret, int menu) {
		this.num=num;
		this.writer = writer;
		this.subject = subject;
		this.pass = pass;
		this.readcount = readcount;
		this.regdate = regdate;
		this.content = content;
		this.boardno = boardno;
		this.secret = secret;
		this.filename = filename;
		this.menu = menu;
	}
	public int getMenu() {
		return menu;
	}
	public void setMenu(int menu) {
		this.menu = menu;
	}
	public int getSecret() {
		return secret;
	}
	public void setSecret(int secret) {
		this.secret = secret;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	
}
