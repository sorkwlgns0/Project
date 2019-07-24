package shopping.service;

import java.util.List;

import shopping.domain.BoardVO;
import shopping.domain.ShoppingVO;

public interface BoardService {
	public abstract List<BoardVO> read(int num);
	public abstract void write(BoardVO boardVO);
	public abstract BoardVO view(int readnum);
	public abstract List<ShoppingVO> search(String keyword);
	public abstract List<ShoppingVO> menu1(int menu1);
}
