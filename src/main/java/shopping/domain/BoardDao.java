package shopping.domain;

import java.util.List;

public interface BoardDao {

	public abstract List<BoardVO> select(int num);
	public abstract void insert(BoardVO boardVO);
	public abstract BoardVO read(int readnum);
	public abstract List<ShoppingVO> word(String word);

	
}