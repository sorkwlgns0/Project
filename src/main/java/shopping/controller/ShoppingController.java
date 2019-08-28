package shopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shopping.domain.BuyVO;
import shopping.domain.MemberVO;
import shopping.domain.menuVO;
import shopping.service.RegiService;
import shopping.service.RegiServiceImpl;
import shopping.service.ShoppingService;
import shopping.service.menuService;

@Controller
public class ShoppingController {
	private ShoppingService shoppingService;
	private MemberVO memberVO;


	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	private menuService menuservice;
	
	public void setShoppingService(ShoppingService shoppingService) {
		this.shoppingService = shoppingService;
	}
	
	@RequestMapping(value="/main")
	public String list(MemberVO memberVO, Model model) {
		model.addAttribute("newList" , shoppingService.list());
		model.addAttribute("bestList", shoppingService.bestlist());
		model.addAttribute("saleList", shoppingService.salelist());
		return "/main";
	}
	@RequestMapping(value="/top")
	public String top(Model model) {

		return "/top";
	}
	@RequestMapping(value="best_list")
	public String best_list(Model model) {
		model.addAttribute("bestList", shoppingService.bestlist());
		return "/best_list";
	}
	@RequestMapping(value="sale_list")
	public String sale_list(menuVO menu, Model model) {
		model.addAttribute("saleList", shoppingService.salelist());
		return "/sale_list";
	}
	//관리자 컨트롤
		@RequestMapping(value="/admin/search", method=RequestMethod.POST)
		public String searchMember(Model model, HttpServletRequest request) {
			String keyword = request.getParameter("keyword");
			model.addAttribute("searchMember", shoppingService.searchMember(keyword));
			return "/admin/searchMember";
		}
		@RequestMapping(value="/admin/listMember")
		public String listMember(Model model, HttpServletRequest request) {
			model.addAttribute("searchMember", shoppingService.listMember());
			int cnt = shoppingService.listMember().size();
			model.addAttribute("cnt" , cnt);
			return "/admin/searchMember";
		}
		
		@RequestMapping(value="/admin/search/{seq}")
		public String memberInfo(Model model, HttpServletRequest request, @PathVariable int seq) {
			model.addAttribute("member" , shoppingService.read(seq));
			int cnt = shoppingService.listMember().size();
			model.addAttribute("cnt" , cnt);
			return "/admin/infoMember";
		}
		@RequestMapping(value="/admin/deleteMember/{seq}")
		public String deleteMember(Model model, HttpServletRequest request, @PathVariable int seq) {
			shoppingService.deleteMember(seq);
			return "redirect:/adminmode";
		}
		@RequestMapping(value="/adminmode")
		public String mode( BuyVO buyVO, Model model) {
			model.addAttribute("totalbuyList", shoppingService.buylist());
			model.addAttribute("searchMember", shoppingService.listMember());
			return "/adminmode";
		}
		@RequestMapping(value="/status/{seq}")
		public String updateStatus( BuyVO buyVO, @PathVariable int seq) {
			buyVO.setStatus(1);
			buyVO.setBuynum(seq);
			shoppingService.updateStatus(buyVO);
			return "redirect:/adminmode";
		}
}
