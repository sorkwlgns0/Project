package shopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import shopping.domain.CommentVO;
import shopping.domain.MemberVO;
import shopping.service.CommentService;

@Controller
public class CommentController {

	private CommentService commentService;

	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}

	@RequestMapping(value="/comment/list/", method=RequestMethod.GET)
	@ResponseBody
	private List<CommentVO> mCommentServiceList(@RequestParam int bno, Model model) throws Exception {

		return commentService.commentListService(bno);
	}

	@RequestMapping(value="/comment/insert")
	@ResponseBody
	private int mCommentServiceInsert(@RequestParam int bno, @RequestParam String content, HttpSession session) throws Exception {
		String id = (String) session.getAttribute("login");
		CommentVO comment = new CommentVO();

		comment.setBno(bno);
		comment.setContent(content);
		// 임시 ID
		comment.setWriter(id);
		
		return commentService.commentInsertService(comment);
	}

	@RequestMapping("/comment/update") // 댓글 수정
	@ResponseBody
	private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception {

		CommentVO comment = new CommentVO();
		comment.setCno(cno);
		comment.setContent(content);
		comment.setWriter("test");
		return commentService.commentUpdateService(comment);
	}

	@RequestMapping("/comment/delete/{cno}") // 댓글 삭제
	@ResponseBody
	private int mCommentServiceDelete(@PathVariable int cno) throws Exception {

		return commentService.commentDeleteService(cno);
	}
}
