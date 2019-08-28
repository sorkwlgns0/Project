package shopping.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import shopping.domain.BoardVO;
import shopping.domain.MemberVO;
import shopping.service.BoardService;
import shopping.service.RegiService;



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
	@RequestMapping(value="/board_list/{num}")
	public String list(Model model, @PathVariable int num, HttpSession session, MemberVO memberVO) {
		int cnt = boardService.read(num).size();
		String id = (String)session.getAttribute("login");
		if(id==null) {
			model.addAttribute("boardVO" , boardService.read(num));
			model.addAttribute("cnt" , cnt);
			return "/board_list";
		}else {
		memberVO = boardService.list(id);
		model.addAttribute("vip", memberVO.getHowmuch());
		model.addAttribute("boardVO" , boardService.read(num));
		model.addAttribute("cnt" , cnt);
		return "/board_list";
		}
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

		boardService.write(boardVO);
		return "redirect:/board_list/{num}";
	}
	@RequestMapping(value="/board_read/{num}/{readnum}" , method=RequestMethod.GET)
	public String read(MemberVO memberVO, Model model, @PathVariable int readnum, @PathVariable int num, HttpSession session) {
		String id = (String)session.getAttribute("login");
		
		if(id==null) {
			model.addAttribute("boardVO" , boardService.read(num));
			model.addAttribute("boardVO" , boardService.view(readnum));
			return "/board_read";
		}else {
		model.addAttribute("boardVO" , boardService.read(num));
		model.addAttribute("boardVO" , boardService.view(readnum));
		
		memberVO = boardService.list(id);
		model.addAttribute("vip", memberVO.getHowmuch());
		return "/board_read";
		}
	}
	@RequestMapping(value="/board_modify/{num}/{readnum}" , method=RequestMethod.GET)
	public String modify(Model model, @PathVariable int readnum, @PathVariable int num) {
		model.addAttribute("boardVO" , boardService.read(num));
		model.addAttribute("boardVO" , boardService.view(readnum));
		return "/board_modify";
	}
	@RequestMapping(value="/board_modify/{num}/{readnum}" , method=RequestMethod.POST)
	public String modify(Model model, BoardVO boardVO, @RequestParam("image") MultipartFile mf, MultipartHttpServletRequest request) throws IllegalStateException, IOException, Exception{
		
		String fileName = mf.getOriginalFilename(); //업로드 파일이름
		String path = request.getRealPath("/");
		boardVO.setFilename(mf.getOriginalFilename());
		File uploadFile = new File(path+"//"+fileName); //복사될 위치
		
		if(mf.isEmpty()==false) {
			mf.transferTo(uploadFile);
		}
		boardService.edit(boardVO);
		return "redirect:/board_list/{num}";
	}	
	@RequestMapping(value="/board_delete/{num}/{readnum}" , method = {RequestMethod.GET, RequestMethod.POST})
	public String delete(Model model, @PathVariable int num, @PathVariable int readnum) {
		model.addAttribute("readnum", readnum);
		BoardVO boardVO = new BoardVO();
		boardVO.setNum(readnum);
		boardVO.setBoardno(num);
		System.out.println(boardVO.getNum());
		System.out.println(boardVO.getBoardno());
		boardService.delete(boardVO);
		return "redirect:/board_list/{num}";
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
}


