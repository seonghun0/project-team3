package teamproject3.team3.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import teamproject3.team3.Service.BoardService;
import teamproject3.team3.vo.BoardVO;


@Controller
@RequestMapping(path = {"/board"})
public class BoardController {
	
	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	@GetMapping(path = {"boardmain"})
	public String list(Model model) {

		List<BoardVO> boards = boardService.findAll();
		
		model.addAttribute("boards", boards);
		
		return "board/boardmain";
	}
	
	@GetMapping(path = {"/write"})
	public String showWriteForm() {
		
		return "board/write";
		
	}
	
	@PostMapping(path = {"/write"})
	public String write(String title, String member_id, String content, HttpSession session, Model model) {
		
		System.out.println(title);
		boardService.writeBoard(title, member_id, content);
		
		return "redirect:boardmain";
		
	}
	
	@GetMapping(path = { "/detail" })
	public String detail(int boardNo, Model model) {
		
		BoardVO board = boardService.findBoardByBoardNo(boardNo);
		
		if (board == null) {
			return "redirect:boardmain";
		}
		
		boardService.increaseBoardReadCount(boardNo);
		board.setReadCount(board.getReadCount() + 1);
		
		model.addAttribute("board", board);
		
		return "board/detail";
	}
	
	@GetMapping(path = { "/delete" })
	public String delete(int boardNo) {
	
		boardService.deleteBoard(boardNo);
	
		return "redirect:boardmain";
	}
	

	@GetMapping(path = { "/edit" })
	public String showEditForm(int boardNo, Model model) {

		BoardVO board = boardService.findBoardByBoardNo(boardNo);
		
		if (board == null) {
			return "redirect:boardmain";
		}
	
		model.addAttribute("board", board);
	
		return "board/edit";
	}
	
	@PostMapping(path = { "/update" })
	public String update(BoardVO board) {
		
		boardService.updateBoard(board);
		
		return "redirect:detail?boardNo=" + board.getBoardNo();
	}


}

