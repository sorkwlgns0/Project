package shopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import shopping.domain.MemberVO;
@Repository
public class MemberDaoMybatis implements MemberDao {
	private SqlSessionTemplate sqlSessionTemplate;
	public MemberDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	public void insertMember(MemberVO memberVO) {
		System.out.println("sql 실행");
		sqlSessionTemplate.insert("insertMember", memberVO);
		
	}

	public List<MemberVO> list() {
		return sqlSessionTemplate.selectList("memberlist");
	}
	@Override
	public MemberVO idCheck(String id) {
		return sqlSessionTemplate.selectOne("idCheck", id);
	}

}