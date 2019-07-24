package shopping.controller;

import java.io.File;
import java.io.IOException;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import shopping.domain.BoardVO;
import shopping.service.BoardService;
import shopping.service.ShoppingService;


@Controller
public class BoardController {
	private BoardService boardService;
	
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	@RequestMapping(value="/send/{num}", method=RequestMethod.GET)
	public String send(Model model, @PathVariable int num) {
		model.addAttribute("send" , boardService.read(num));
		return "/board_write";
	}
	@RequestMapping(value="/board_list/{num}", method=RequestMethod.GET)
	public String list(Model model, @PathVariable int num) {
		int cnt = boardService.read(num).size();
		model.addAttribute("boardVO" , boardService.read(num));
		model.addAttribute("cnt" , cnt);

		return "/board_list";
	}
	@RequestMapping(value="/board_write/{num}" , method=RequestMethod.GET)
	public String write(Model model, @PathVariable int num) {
		model.addAttribute("boardVO" , boardService.read(num));
		return "/board_write";
	}
	//새 글 작성을 위한 요청 처리
	
	@RequestMapping(value="/board_write/{num}", method=RequestMethod.POST)
	public String write(BoardVO boardVO, @RequestParam("image") MultipartFile mf, MultipartHttpServletRequest request) throws IllegalStateException, IOException {

		String fileName = mf.getOriginalFilename(); //업로드 파일이름
		String path = request.getRealPath("/");
		boardVO.setFilename(mf.getOriginalFilename());
		File uploadFile = new File(path+"//"+fileName); //복사될 위치
		if(mf.isEmpty()==false) {
			mf.transferTo(uploadFile);
		}
//		System.out.println(path);
//		System.out.println(uploadFile);
//		System.out.println(boardVO.getNum());
//		System.out.println(boardVO.getWriter());
//		System.out.println(boardVO.getSubject());
//		System.out.println(boardVO.getPass());
//		System.out.println(boardVO.getReadcount());
//		System.out.println(boardVO.getRegdate());
//		System.out.println(boardVO.getBoardno());
//		System.out.println(boardVO.getContent());
//		System.out.println(boardVO.getFilename());
		boardService.write(boardVO);
		return "redirect:/board_list/{num}";
	}
	@RequestMapping(value="/board_read/{num}/{readnum}" , method=RequestMethod.GET)
	public String read(Model model, @PathVariable int readnum, @PathVariable int num) {
		model.addAttribute("boardVO" , boardService.read(num));
		model.addAttribute("boardVO" , boardService.view(readnum));
		return "/board_read";
	}
	
	@RequestMapping(value="/board_search", method=RequestMethod.GET)
	public String GetSearch() {
		return "/board_search_list";
	}
	@RequestMapping(value="/board_search", method=RequestMethod.POST)
	public String PostSearch(Model model, @RequestParam(value = "keyword") String keyword){
		model.addAttribute("keyword" , boardService.search(keyword));
		return "/board_search_list";
	}
	
	@RequestMapping(value="/test")
	public String test(Model model, @RequestParam(value = "keyword") String keyword) {
		System.out.println(keyword);
		return "/test";
	}
	@RequestMapping(value="/test1")
	public String test1(Model model) {
		return "/test1";
	}
}