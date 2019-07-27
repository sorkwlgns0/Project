package shopping.dao;

import java.util.List;

import shopping.domain.MemberVO;

public interface MemberDao {
	public abstract void insertMember(MemberVO memberVO);
	public abstract List<MemberVO> list();
	public MemberVO idCheck(String id);
}