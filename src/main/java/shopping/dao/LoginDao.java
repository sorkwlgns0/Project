package shopping.dao;

import java.util.List;

import shopping.domain.MemberVO;

public interface LoginDao {
	public abstract List<MemberVO> list();
	public abstract MemberVO getId(String id);
	public abstract MemberVO searchID(String email);
	public abstract MemberVO searchPW(String id);
	public abstract void changePW(MemberVO memeberVO);
}