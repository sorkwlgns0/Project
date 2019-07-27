package shopping.service;


import java.util.List;
import shopping.domain.CommentVO;

public interface CommentService {
	public abstract List<CommentVO> commentListService(int bno);
	public abstract int commentInsertService(CommentVO comment);
	public abstract int commentUpdateService(CommentVO comment);
	public abstract int commentDeleteService(int cno);
}

