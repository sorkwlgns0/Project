package shopping.dao;

import java.util.List;

import shopping.domain.MemberVO;

public interface LoginDao {
	public abstract List<MemberVO> list();
	public abstract MemberVO getId(String id);
}
