package shopping.controller;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import shopping.domain.MemberVO;
import shopping.service.LoginService;
@Controller
public class LoginController {
	public LoginService loginService;
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "/login";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(MemberVO memberVO,HttpSession session) {
		String id = memberVO.getId();
		String pass = memberVO.getPassword();
		System.out.println("넣은 아이디"+id);;
		memberVO = loginService.getId(id);
		
		System.out.println("가져온 아이디:"+memberVO.getId());
		if(id.equals(memberVO.getId()) && pass.equals(memberVO.getPassword())) {
			session.setAttribute("login", memberVO);			
			return "/loginSuc";
		}
		else { return "/login";}
	}
}
