package shopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;


import shopping.domain.CommentVO;

@Repository
public class CommentDaoMybatis implements CommentDao {
	private SqlSessionTemplate sqlSessionTemplate;
	public CommentDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public List<CommentVO> commentList(int bno) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("commentList", bno);
	}

	@Override
	public int commentInsert(CommentVO comment) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("commentInsert", comment);
	}
	@Override
	public int commentUpdate(CommentVO comment) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("commentUpdate", comment);
	}
	@Override
	public int commentDelete(int cno) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("commentDelete", cno);
	}
}