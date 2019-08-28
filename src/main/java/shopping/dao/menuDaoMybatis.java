package shopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.menuVO;

@Repository
public class menuDaoMybatis implements menuDao{
	
	private SqlSessionTemplate sqlSessionTemplate;
	
	public menuDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public void setSqlMapClient(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public List<menuVO> list(int category) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("listmenu", category);
	}

	@Override
	public int delete(menuVO menuVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("deletemenu", menuVO);
	}

	@Override
	public int deleteAll() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.delete("deleteAllmenu");
	}

	@Override
	public int update(menuVO menuVO) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("updatemenu", menuVO);
	}

	@Override
	public void insert(menuVO menuVO) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("insertmenu", menuVO);
	}

	@Override
	public menuVO select(int seq) {
		// TODO Auto-generated method stub
		menuVO vo = (menuVO) sqlSessionTemplate.selectOne("selectmenu", seq);
		return vo;
	}

	@Override
	public List<menuVO> search(String key) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("searchmenu",key);
	}

	@Override
	public void buyinsert(BuyVO buyVO) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("buyinsert", buyVO);
	}

	@Override
	public List<BuyVO> buylist(String id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("buylist", id);
	}

	@Override
	public void buyUpdate(MemberVO memberVO) {
		sqlSessionTemplate.update("buyUpdate", memberVO);
		
	}

	@Override
	public MemberVO getInfo(String id) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("getInfo", id);
	}

	@Override
	public int updatebuys(int seq) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("updatebuys", seq);
	}

	@Override
	public void deleteBuy(BuyVO buyVO) {
		sqlSessionTemplate.delete("deleteBuy", buyVO);
	}
	
}
