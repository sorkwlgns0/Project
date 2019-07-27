package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.dao.CommentDao;
import shopping.domain.CommentVO;

	@Service
	public class CommentServiceImpl implements CommentService{
		public void setCommentService(CommentDao commentDao) {
			this.commentDao = commentDao;
		}
		public CommentDao getCommentDao() {
			return commentDao;
		}
		public void setCommentDao(CommentDao commentDao) {
			this.commentDao = commentDao;
		}
		private CommentDao commentDao;
		@Override
		public List<CommentVO> commentListService(int bno) {
			// TODO Auto-generated method stub
			return commentDao.commentList(bno);
		}
		@Override
		public int commentInsertService(CommentVO comment) {
			// TODO Auto-generated method stub
			return commentDao.commentInsert(comment);
		}
		@Override
		public int commentUpdateService(CommentVO comment) {
			// TODO Auto-generated method stub
			return commentDao.commentUpdate(comment);

			
		}
		@Override
		public int commentDeleteService(int cno) {
			// TODO Auto-generated method stub
			return commentDao.commentDelete(cno);
		}
	}
