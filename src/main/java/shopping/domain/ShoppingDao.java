package shopping.domain;

import java.util.List;


public interface ShoppingDao {
	
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
