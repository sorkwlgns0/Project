package shopping.service;

import java.util.List;

import shopping.domain.MemberVO;

public interface LoginService {
	public abstract List<MemberVO> list();
	public abstract MemberVO getId(String id);
}
