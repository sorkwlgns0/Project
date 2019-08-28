package shopping.dao;

import java.util.List;
import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.menuVO;

public interface menuDao {

	public abstract List<menuVO> list(int category);
	public abstract int delete(menuVO menuVO);
	public abstract int deleteAll();
	public abstract int update(menuVO menuVO);
	public abstract void insert(menuVO menuVO);
	public abstract menuVO select(int seq);
	public abstract List<menuVO> search(String key);
	public abstract void buyinsert(BuyVO buyVO);
	public abstract List<BuyVO> buylist(String id);
	public abstract void buyUpdate(MemberVO memberVO);
	public abstract MemberVO getInfo(String id);
	public abstract int updatebuys(int seq);
	public abstract void deleteBuy(BuyVO buyVO);
}
