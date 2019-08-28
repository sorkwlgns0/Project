package shopping.service;

import java.util.List;

import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.ShoppingVO;

public interface ShoppingService {
	
	public abstract List<ShoppingVO> list();
	public abstract List<ShoppingVO> bestlist();
	public abstract List<ShoppingVO> salelist();
	public abstract List<ShoppingVO> searchMember(String keyword);
	public abstract List<MemberVO> listMember();
	public abstract MemberVO read(int seq);
	public abstract void deleteMember(int seq);
	public abstract List<BuyVO> buylist();
	public abstract void updateStatus(BuyVO buyVO);
}
