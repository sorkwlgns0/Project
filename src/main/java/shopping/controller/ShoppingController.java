package shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import shopping.domain.MemberVO;
import shopping.service.ShoppingService;

@Controller
public class ShoppingController {
	private ShoppingService shoppingService;
	
	public void setShoppingService(ShoppingService shoppingService) {
		this.shoppingService = shoppingService;
	}
	
	@RequestMapping(value="/main")
	public String list(MemberVO memberVO, Model model) {
		model.addAttribute("shoppingList" , shoppingService.list());
		return "/main";
	}
	@RequestMapping(value="/top")
	public String top(Model model) {

		return "/top";
	}
	@RequestMapping(value="best_list")
	public String best_list(Model model) {
		model.addAttribute("shoppingList" , shoppingService.list());
		return "/best_list";
	}
	@RequestMapping(value="sale_list")
	public String sale_list(Model model) {
		model.addAttribute("shoppingList" , shoppingService.list());
		return "/sale_list";
	}
}
