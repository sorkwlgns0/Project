package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.dao.MemberDao;
import shopping.domain.MemberVO;
@Service
public class RegiServiceImpl implements RegiService{
	private MemberDao memberDao;

	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void insertMember(MemberVO memberVO) {
		memberDao.insertMember(memberVO);
		
	}

	public List<MemberVO> list() {
		return memberDao.list();
	}

	@Override
	public MemberVO idCheck(String id) {
		return memberDao.idCheck(id);
	}



}