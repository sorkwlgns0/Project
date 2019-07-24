package shopping.service;

import java.util.List;

import shopping.domain.MemberVO;

public interface RegiService {
	public abstract void insertMember(MemberVO memberVO);
	public abstract List<MemberVO> list();
	public MemberVO idCheck(String id);
}
