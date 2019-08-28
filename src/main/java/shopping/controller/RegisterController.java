package shopping.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import shopping.domain.MemberVO;
import shopping.service.RegiService;


@Controller
public class RegisterController {
	private MemberVO memberVO;
	private RegiService regiService;
	public void setRegiService(RegiService regiService) {
		this.regiService = regiService;
	}
	@RequestMapping(value="/register/idCheck", method=RequestMethod.GET)
	public String postIdCheck(HttpServletRequest req,HttpSession session) {
		String id = req.getParameter("id");
		MemberVO idCheck = regiService.idCheck(id);
		int result = 0;
		if(idCheck != null) {
			result = 1;
		}
		session.setAttribute("check", result);
		return "/register/idCheck";
	}

	@RequestMapping(value="/register/regi", method=RequestMethod.GET)
	public String handleStep1() {
		return "/register/regi";
	}
	@RequestMapping(value="/register/regi", method=RequestMethod.POST)
	public String handleStep2() {
		return "/register/regi";
	}
	@RequestMapping(value="/register/regi2", method = RequestMethod.GET)
	public String step2(MemberVO memberVO,Model model) {
		return "redirect:/main";
	}
	@RequestMapping(value="/register/regi2", method = RequestMethod.POST)
	public String handleStep2(MemberVO memberVO,
			@RequestParam(value="agree", defaultValue="false")Boolean agree,
	Model model,HttpServletResponse response)throws IOException{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(!agree) {
			
			out.println("<script>alert('약관에 동의해주세요.'); history.go(-1);</script>");
	        out.flush();
			return "/register/regi";
		}
		System.out.println("컨트롤러 실행");
		out.println("<script>alert('회원가입이 완료되었습니다.');</script>");
        out.flush();
		regiService.insertMember(memberVO);
		return "/login/login";
	}
	@RequestMapping(value="/modify/{seq}", method=RequestMethod.GET)
	public String edit(@PathVariable int seq, Model model) {
		MemberVO memberVO = regiService.read(seq);
		model.addAttribute("memberVO", memberVO);
		return "/board/edit";
	}
	
	@RequestMapping(value="/modify/{seq}", method=RequestMethod.POST)
	public String edit(
			@Valid @ModelAttribute MemberVO memberVO,
			BindingResult result,
			int password,SessionStatus sessionStatus,
			HttpSession session,
			Model model) {
				regiService.updateMember(memberVO);
				memberVO.getBirth();
				sessionStatus.setComplete();
				session.setAttribute("update", memberVO);	
				return "redirect:/main";
		
	}
	@RequestMapping(value="/delete/{seq}", method=RequestMethod.GET)
	public String delete(@PathVariable int seq, Model model) {
		model.addAttribute("seq", seq);
		return "/login/delete";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	public String delete(int seq,String pwd, Model model, HttpSession session) {
		int rowCount;
		MemberVO memberVO = new MemberVO();
		memberVO.setSeq(seq);
		memberVO.setPassword(pwd);
		System.out.println(memberVO.getPassword());
		rowCount = regiService.deleteMem(memberVO);
		session.invalidate();
		if(rowCount ==0) {
			model.addAttribute("seq", seq);
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			
			return "/login/delete";
		}
		else {
		return "redirect:/main";
		}
	}
	
}