package shopping.service;

import java.util.List;
import org.springframework.stereotype.Service;
import shopping.domain.BoardDao;
import shopping.domain.BoardVO;
import shopping.domain.MemberVO;
import shopping.domain.ShoppingVO;


@Service
public class BoardServiceImpl implements BoardService{
	
	private BoardDao boardDao;

	public void setBoardService(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	public BoardDao getBoardDao() {
		return boardDao;
	}
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}
	@Override
	public List<BoardVO> read(int num) {
		return boardDao.select(num);
	}
	@Override
	public void write(BoardVO boardVO) {
		boardDao.insert(boardVO);
	}
	@Override
	public BoardVO view(int readnum) {
		// TODO Auto-generated method stub
		return boardDao.read(readnum);
	}
	@Override
	public List<ShoppingVO> search(String word) {
		// TODO Auto-generated method stub
		System.out.println(word+ "");
		return boardDao.word(word);
	}
	@Override
	public MemberVO list(String id) {
		return boardDao.list(id);
	}
	@Override
	public int edit(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDao.update(boardVO);
	}
	@Override
	public int delete(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDao.delete(boardVO);
	}
}
