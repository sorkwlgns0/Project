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
	@Override
	public MemberVO idCheck(String id) {
		System.out.println("여긴 바티스" + id);
		return sqlSessionTemplate.selectOne("idCheck", id);
	}
	public void updateMember(MemberVO memberVO) {
		sqlSessionTemplate.update("updateMember", memberVO);
	}
	public MemberVO select(int seq) {
		MemberVO vo = (MemberVO) sqlSessionTemplate.selectOne("select", seq);
		return vo;
	}
	
	public int deleteMem(MemberVO memberVO) {
		return sqlSessionTemplate.delete("deleteMem", memberVO);
	}
}