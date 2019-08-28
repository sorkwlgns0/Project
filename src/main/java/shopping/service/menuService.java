package shopping.service;

import java.util.List;

import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.menuVO;

public interface menuService {
	public abstract List<menuVO> list(int category);
	public abstract int delete(menuVO menuVO);
	public abstract int edit(menuVO menuVO);
	public abstract void write(menuVO menuVO);
	public abstract menuVO read(int seq);
	public abstract List<menuVO> search(String key);
	public abstract void buyinsert(BuyVO buyVO);
	public abstract List<BuyVO> buylist1(String id);
	public abstract void buyUpdate(MemberVO memberVO);
	public abstract MemberVO getInfo(String id);
	public abstract int updatebuys(int seq);
	public abstract void deleteBuy(BuyVO buyVO);
	public abstract void updateDeleteBuy(menuVO menuVO);
	
}
