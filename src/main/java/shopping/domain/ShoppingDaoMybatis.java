package shopping.domain;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ShoppingDaoMybatis implements ShoppingDao{
	
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ShoppingDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public void setSqlMapClient(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public List<ShoppingVO> list() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("list");
	}
	@Override
	public List<ShoppingVO> searchMember(String keyword) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("searchMember", keyword);
	}
	@Override
	public List<MemberVO> listMember() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("listMember");
	}
	@Override
	public MemberVO read(int seq) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberInfo", seq);
	}
	@Override
	public void deleteMember(int seq) {
		sqlSessionTemplate.delete("forceDelete", seq);
	}
	@Override
	public List<BuyVO> buylist() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("totalbuyList");
	}
	@Override
	public void updateStatus(BuyVO buyVO) {
		sqlSessionTemplate.update("updateStatus",buyVO);
		
	}
	@Override
	public List<ShoppingVO> bestlist() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("bestList");
	}
	@Override
	public List<ShoppingVO> salelist() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("saleList");
	}
}