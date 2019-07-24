package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.domain.BoardDao;
import shopping.domain.BoardVO;
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
		
		return boardDao.word(word);
	}
	@Override
	public List<ShoppingVO> menu1(int menu) {
		// TODO Auto-generated method stub
		System.out.println(menu + "서비스 부분");
		return boardDao.menu(menu);
	}

}
