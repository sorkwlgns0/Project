package shopping.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shopping.domain.MemberVO;
import shopping.service.LoginService;
@Controller
public class LoginController {
	private String id;
	public LoginService loginService;
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	@RequestMapping(value="/login/login", method=RequestMethod.GET)
	public String loginget(HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "/login/login";			
		}else {
			return "redirect:/main";
		}
	}
	@RequestMapping(value="/login/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main";
	}
	@RequestMapping(value="/login/login", method=RequestMethod.POST)
	public String login(MemberVO memberVO,HttpSession session) {
		String id = memberVO.getId();
		String pass = memberVO.getPassword();
		memberVO = loginService.getId(id);
		if(id.equals(memberVO.getId()) && pass.equals(memberVO.getPassword())) {
			session.setAttribute("login", memberVO.getId());			
			return "/login/loginSuc";
		}
		else { return "/login/login";}
	}
	@RequestMapping(value="/login/searchID", method=RequestMethod.GET)
	public String searchID() {
		return "/login/searchID";
	}
	@RequestMapping(value="/login/searchID", method=RequestMethod.POST)
	public String searchID(MemberVO memberVO,HttpSession session,Model model) {
		String email = memberVO.getEmail();
		String name = memberVO.getName();
		memberVO = loginService.searchID(email);
		if(email.equals(memberVO.getEmail()) && name.equals(memberVO.getName())) {
			model.addAttribute("foundID", memberVO.getId());			
			return "/login/foundID";
		}
		else {
			String a = null;
			model.addAttribute("foundID", a);
			return "/login/foundID";}
	}
	@RequestMapping(value="/login/searchPW", method=RequestMethod.GET)
	public String searchPW() {
		return "/login/searchPW";
	}
	@RequestMapping(value="/login/foundPW", method=RequestMethod.GET)
	public String foundPW() {
		return "/login/foundPW";
	}
	@RequestMapping(value="/login/foundPW", method=RequestMethod.POST)
	public String searchPW(MemberVO memberVO,HttpSession session,Model model) {
		String id = memberVO.getId();
		this.id = id;
		int birth = memberVO.getBirth();
		memberVO = loginService.searchPW(id);
		if(id.equals(memberVO.getId()) && birth == memberVO.getBirth()) {
			return "/login/foundPW";
		}
		else {
			String a = null;
			model.addAttribute("foundPW", a);
			return "/login/foundPW";}
	}
	@RequestMapping(value="/login/passwordChanged", method=RequestMethod.GET)
	public String pwdchanged() {
		return "/login/passwordChanged";
	}
	@RequestMapping(value="/login/passwordChanged", method=RequestMethod.POST)
	public String pwdchanged(MemberVO memberVO, Model model) {
		
		String password = memberVO.getPassword();
		String passwordConfirm = memberVO.getPasswordConfirm();
		memberVO.setId(id);
		if(password.equals(passwordConfirm)) {	
			loginService.changePW(memberVO);
			return "/login/passwordChanged";
		}
		else {
			String a = null;
			model.addAttribute("foundPW", a);
			return "/login/foundPW";}
	}
}
