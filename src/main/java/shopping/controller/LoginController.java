package shopping.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
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
	public String login(MemberVO memberVO,HttpSession session, Model model, HttpServletResponse response) throws IOException {
		String id = memberVO.getId();
		String pass = memberVO.getPassword();
		MemberVO Check = loginService.getId(id);
		if(Check == null) {
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('아이디가 없거나 비밀번호가 일치하지 않습니다.'); history.go(-1);</script>");
            out.flush();
		}
		if(id.equals(Check.getId()) && pass.equals(Check.getPassword())) {
			session.setAttribute("login", Check.getId());		
			session.setAttribute("update", Check);
			return "redirect:/main";
		}
		if(id.equals(Check.getId()) && pass != (Check.getPassword())) { 
			response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('아이디가 없거나 비밀번호가 일치하지 않습니다.'); history.go(-1);</script>");
	        out.flush();
		}
		return "/login/login";
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
	
	@RequestMapping(value="/mypage")
	public String mypage(Model model,HttpSession session, HttpServletResponse response)throws IOException {
       
		String id = (String)session.getAttribute("login");
		System.out.println(id);
		if(id == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인을 해주세요.'); history.go(-1);</script>");
	        out.flush();
	        return "/login/login";
		}
		model.addAttribute("update", loginService.getId(id));
		return "/mypage";
	}
	@RequestMapping(value="/update")
	public String update(Model model,HttpSession session) {
		String id = (String)session.getAttribute("login");
		model.addAttribute("update", loginService.getId(id));
		return "/login/update";
	}
	@RequestMapping(value="/delete")
	public String delete(Model model,HttpSession session) {
		MemberVO memberVO = (MemberVO) session.getAttribute("update");
		return "/login/delete";
	}
}