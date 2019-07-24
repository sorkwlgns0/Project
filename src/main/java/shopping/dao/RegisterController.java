package shopping.dao;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shopping.domain.MemberVO;
import shopping.service.RegiService;


@Controller
public class RegisterController {
	private MemberVO memberVO;
	private RegiService regiService;
	public void setRegiService(RegiService regiService) {
		this.regiService = regiService;
	}
	@RequestMapping(value="/step1", method=RequestMethod.GET)
	public String handleStep1() {
		return "/step1";
	}
	@RequestMapping(value="/step1", method=RequestMethod.POST)
	public String handleStep2() {
		return "/step1";
	}
	@RequestMapping(value="/step2", method = RequestMethod.GET)
	public String step2(MemberVO memberVO,Model model) {
		return "/regiSuc";
	}
	@RequestMapping(value="/step2", method = RequestMethod.POST)
	public String handleStep2(MemberVO memberVO,
			@RequestParam(value="agree", defaultValue="false")Boolean agree,
	Model model){
		if(!agree) {
			return "/step1";
		}
		System.out.println("컨트롤러 실행");
		regiService.insertMember(memberVO);
		return "/regiSuc";
	}
	@RequestMapping(value="/regiSuc", method = RequestMethod.GET)
	public String regiSuc() {
		return "/regiSuc";
	}
	/*@RequestMapping(value="/register/step3", method=RequestMethod.POST)
	public String handleStep3(HttpServletRequest request) {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password= request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
		RegisterRequest regReq = new RegisterRequest();
				regReq.setEmail(email);
			
		return "/register/step3";
	}
	private MemberRegisterService memberRegisterService;
	public void setMemberRegisterService(
	MemberRegisterService memberRegisterService){
		this.memberRegisterService = memberRegisterService;
	}
	@RequestMapping(value="/register/step3", method=RequestMethod.POST)
	public String handleStep3(@ModelAttribute("formData")RegisterRequest regReq, Errors errors) {
		new RegisterRequestValidator().validate(regReq, errors);
		if(errors.hasErrors()) {
			return "register/step2";
		}
		try {
			memberRegisterService.regist(regReq);
			return "register/step3";
		}catch(AlreadyExistingMemberException e) {
			errors.rejectValue("email", "duplicate");
			return "register/step2";
		}
	}*/
}
