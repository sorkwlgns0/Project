package shopping.dao;

import java.util.List;


import shopping.domain.CommentVO;
 
public interface CommentDao {
	// 댓글 목록
	public abstract List<CommentVO> commentList(int bno);
    // 댓글 작성
    public abstract int commentInsert(CommentVO comment);
    // 댓글 수정
    public abstract int commentUpdate(CommentVO comment);
    // 댓글 삭제
    public abstract int commentDelete(int cno);
}
