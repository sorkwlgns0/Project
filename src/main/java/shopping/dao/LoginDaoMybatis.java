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
			MemberVO vo = (MemberVO) sqlSessionTemplate.selectOne("loginList",id);
			return vo;
		}
		@Override
		public MemberVO searchID(String email) {
			MemberVO vo = (MemberVO)sqlSessionTemplate.selectOne("searchID", email);
			return vo;
		}
		@Override
		public MemberVO searchPW(String id) {
			MemberVO vo = (MemberVO)sqlSessionTemplate.selectOne("searchPW", id);
			return vo;
		}
		@Override
		public void changePW(MemberVO memberVO) {
			sqlSessionTemplate.update("changePW", memberVO);
		}
}