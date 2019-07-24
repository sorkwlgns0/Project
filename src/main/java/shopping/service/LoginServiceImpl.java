package shopping.service;

import java.util.List;

import org.springframework.stereotype.Service;

import shopping.dao.LoginDao;
import shopping.domain.MemberVO;
@Service
public class LoginServiceImpl implements LoginService{
	private LoginDao loginDao;

	public LoginDao getMemberDao() {
		return loginDao;
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	public List<MemberVO> list() {
		// TODO Auto-generated method stub
		return loginDao.list();
	}

	@Override
	public MemberVO getId(String id) {
		return loginDao.getId(id);
	}

}
