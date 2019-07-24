package shopping.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import shopping.domain.MemberVO;

@Repository
public class LoginDaoMybatis implements LoginDao{
		private SqlSessionTemplate sqlSessionTemplate;
		public LoginDaoMybatis(SqlSessionTemplate sqlSessionTemplate) {
			this.sqlSessionTemplate = sqlSessionTemplate;
		}
		public List<MemberVO> list() {
			return sqlSessionTemplate.selectList("loginList");
		}
		public MemberVO getId(String id) {
			System.out.println("여긴 베티스"+ id);
			MemberVO vo = (MemberVO) sqlSessionTemplate.selectOne("getId",id);
			return vo;
		}
}
