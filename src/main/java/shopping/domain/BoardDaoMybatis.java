package shopping.domain;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoMybatis implements BoardDao{
	
	private SqlSessionTemplate sqlSessionTemplate;
	
	public BoardDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public void setSqlMapClient(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public List<BoardVO> select(int num) {
		return sqlSessionTemplate.selectList("select", num);
	}
	@Override
	public void insert(BoardVO boardVO) {
		sqlSessionTemplate.insert("insert", boardVO);
	}
	@Override
	public BoardVO read(int readnum) {
		BoardVO vo=(BoardVO) sqlSessionTemplate.selectOne("readnum", readnum);
		return vo;
	}
	@Override
	public List<ShoppingVO> word(String word) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("word", word);
	}
	@Override
	public MemberVO list(String id) {
		MemberVO vo = (MemberVO) sqlSessionTemplate.selectOne("VIP", id);
		return vo;
	}
	@Override
	public int update(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("update", boardVO);
	}
	@Override
	public int delete(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("delete", boardVO);
	}
}