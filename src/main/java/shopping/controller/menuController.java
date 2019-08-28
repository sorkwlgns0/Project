package shopping.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.menuVO;
import shopping.service.LoginService;
import shopping.service.RegiService;
import shopping.service.menuService;

@Controller
public class menuController {
	private menuService menuService;
	private MemberVO memberVO;
	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	public void setmenuService(menuService menuService) {
		this.menuService = menuService;
	}
	
	@RequestMapping(value="/menu/combine")
	public String combine() {
		System.out.println("zz");
		return "/menu/combine";
	}
	@RequestMapping(value="/menu/list/{category}")
	public String list(Model model, @PathVariable int category) {
		model.addAttribute("category", category);
		model.addAttribute("menuList", menuService.list(category));
		return "/menu/list";
	}
	
	@RequestMapping(value="/menu/read/{seq}")
	public String read(Model model, @PathVariable int seq) {
		menuVO menuVO = menuService.read(seq);
		model.addAttribute("menuVO", menuVO);
		return "/menu/read";
	}
	
	@RequestMapping(value="/menu/add", method=RequestMethod.GET)
	public String add() {
		System.out.println("ssss");
		return "/menu/add";
	}
	@RequestMapping(value="/menu/add", method=RequestMethod.POST)
	public String add(@Valid menuVO menuVO, HttpServletRequest request) throws IllegalStateException, IOException {
		MultipartFile file = menuVO.getFilename();
		String fileName = file.getOriginalFilename();
		String path = request.getRealPath("/");
		menuVO.setImage(file.getOriginalFilename());
		File uploadFile = new File(path+"//"+"images"+"//"+"menuimage"+"//"+fileName); //파일 저장 위치
		file.transferTo(uploadFile);
		menuService.write(menuVO);
		
		return "redirect:/main";
	}
	@RequestMapping(value="/menu/search")
	public String SearchList(Model model, HttpServletRequest request) {
		String key=request.getParameter("key");
		System.out.println(key);
		model.addAttribute("menuList", menuService.search(key));
		
		return "/menu/list";
	}
	
	@RequestMapping(value="/menu/buy/{name}")
	public String buy(Model model, @PathVariable String name, HttpServletRequest request, HttpSession session, HttpServletResponse response)throws IOException {
		String id = (String)session.getAttribute("login");
		if(id == null) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('로그인을 해주세요.');</script>");
		        out.flush();
		        return "/login/login";
			}else {
		memberVO = menuService.getInfo(id);
		int point = memberVO.getPoint();
		model.addAttribute("menuVO", name);
		int amount = Integer.parseInt(request.getParameter("amount"));
		int sell_price = Integer.parseInt(request.getParameter("sell_price"));
		model.addAttribute("sizee",request.getParameter("sizee"));
		int seq =Integer.parseInt(request.getParameter("seq"));
		model.addAttribute("image",request.getParameter("image"));
		int sum = amount*sell_price;
		session.setAttribute("summ", sum);
		model.addAttribute("sum", sum);
		model.addAttribute("buylist", seq);
		model.addAttribute("amount", amount);
		model.addAttribute("nowpoint", point);
		return "/menu/buy";
			}
	}
	@RequestMapping(value="/menu/finish", method=RequestMethod.POST)
	public String finish(BuyVO buyVO, HttpServletRequest request, HttpSession session) {
		String zipNo = request.getParameter("zipNo");
		String roadAddrPart1 = request.getParameter("roadAddrPart1");
		String addrDetail = request.getParameter("addrDetail");
		String roadAddrPart2 = request.getParameter("roadAddrPart2");
		String address = "우편번호 :  " + zipNo +"   주소: "+roadAddrPart1 +" "+ roadAddrPart2 +" "+ addrDetail;
		int seq = Integer.parseInt(request.getParameter("buylist"));
		buyVO.setAddress(address);
		//구매금액 -> 총 구매금액에 추가 + 포인트 추가
		String id = (String)session.getAttribute("login");
		int point =Integer.parseInt(request.getParameter("point"));
		memberVO = menuService.getInfo(id);
		int sum = (Integer)session.getAttribute("summ");
		int howmuch = memberVO.getHowmuch() + sum;
		memberVO.setHowmuch(howmuch);
		memberVO.setPoint(memberVO.getPoint() + point);
		menuService.buyUpdate(memberVO);	
		//구매 물품 디비에 등록
		menuService.buyinsert(buyVO);
		menuService.updatebuys(seq);
		return "/menu/finish";
	}
	@RequestMapping(value="/buylist")
	public String buylist(HttpSession session, Model model) {
		String id = (String)session.getAttribute("login");
		model.addAttribute("buylist", menuService.buylist1(id));
		model.addAttribute("update", menuService.getInfo(id));
		return "/menu/buylist";
	}
	@RequestMapping(value="/menu/jusoPopup")
	public String jusoPopup() {
		return "/menu/jusoPopup";
	}
	
	@RequestMapping(value="/menu/delete/{seq}", method=RequestMethod.GET)
	public String delete(@PathVariable int seq, Model model) {
		model.addAttribute("seq", seq);

		return "/menu/delete";
	}
	
	@RequestMapping(value="/menu/delete", method=RequestMethod.POST)
	public String delete(int seq, int pwd, Model model) {
		int rowCount;
		menuVO menuVO = new menuVO();
		menuVO.setSeq(seq);
		rowCount = menuService.delete(menuVO);
		
		if(rowCount == 0 ) {
			model.addAttribute("seq", seq);
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			
			return "/menu/delete";
		}
		else {
		
		return "redirect:/main";
		}
	}
	@RequestMapping(value="/deleteBuy/{seq}")
	public String deleteBuy( BuyVO buyVO, @PathVariable int seq, HttpSession session) {
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		//shoppingService.
		//memberVO.setHowmuch(memberVO.getHowmuch()-buyVO.getPrice());
		//int result = memberVO.getHowmuch();
		//shoppingService.updateDeleteBuy();
		//buyVO.setBuynum(seq);
		menuService.deleteBuy(buyVO);
		return "redirect:/adminmode";
	}
}
