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
		sqlSessionTemplate.insert("insertMember", memberVO);
		
	}

	public List<MemberVO> list() {
		return sqlSessionTemplate.selectList("memberlist");
	}

}
