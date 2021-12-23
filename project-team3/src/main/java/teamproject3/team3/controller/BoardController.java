package teamproject3.team3.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import teamproject3.team3.Service.BoardService;
import teamproject3.team3.common.Util;
import teamproject3.team3.view.DownloadView;
import teamproject3.team3.vo.BoardAttachVO;
import teamproject3.team3.vo.BoardVO;
import teamproject3.team3.vo.memberVO;


@Controller
@RequestMapping(path = {"/board"})
public class BoardController {
	
	@Autowired
	@Qualifier("boardService")
	private BoardService boardService;
	
	
	@GetMapping(path = {"/boardmain"})
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
	public String write(MultipartHttpServletRequest req, BoardVO board, Model model, HttpSession session) {
		
		memberVO s = (memberVO)session.getAttribute("loginuser"); // 세션에 저장된 로그인 유저값 불러오기
		
		board.setMember_id(s.getMemberId()); // 보드에 memberId 저장하기
		
		// 데이터 읽기 ( 전달인자를 통해서 자동으로 읽어서 저장 )		
		MultipartFile mf = req.getFile("attachment");
		
		if (mf != null && mf.getOriginalFilename().length() > 0) {
			
			ServletContext application = req.getServletContext();
			String path = application.getRealPath("/resources/upload-files"); // web-path --> computer-path
			
			String userFileName = mf.getOriginalFilename();
			if (userFileName.contains("\\")) { // iexplore 경우
				//C:\AAA\BBB\CCC.png -> CCC.png 
				userFileName = userFileName.substring(userFileName.lastIndexOf("\\") + 1);
			}
			String savedFileName = Util.makeUniqueFileName(userFileName);
			
			try {
				//1. 파일 저장
				mf.transferTo(new File(path, savedFileName)); 
				
				//2. 파일 정보 저장
				BoardAttachVO attachment = new BoardAttachVO();
				attachment.setUserFileName(userFileName);
				attachment.setSavedFileName(savedFileName);
				
				ArrayList<BoardAttachVO> attachments = new ArrayList<>();
				
				attachments.add(attachment);
				board.setAttachments(attachments);

				
			} catch (Exception ex) {
				ex.printStackTrace();
				model.addAttribute("fail", true);
				return "board/write";
			}
		}
		// 데이터베이스에 저장
		boardService.writeBoard(board);
		
		
		// 목록으로 이동
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
	
		int count = boardService.countboardattach(boardNo);
		if(count ==1 ) {
			boardService.deleteBoardattach(boardNo);
			boardService.deleteBoard(boardNo);
		}else {
			boardService.deleteBoard(boardNo);
		}
		
	
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
	
	@GetMapping(path = { "/download" })
	public View download(@RequestParam(defaultValue = "-1") int attachNo, Model model) {
		if (attachNo == -1) {
			// return "redirect:list";
			return new RedirectView("boardmain");
		}
		
		BoardAttachVO attachment = boardService.findBoardAttachByAttachNo(attachNo);
		if (attachment == null) {
			return new RedirectView("boardmain");
		}
		model.addAttribute("attachment", attachment);
		
		// return "view-name or response content with @ResponseBody";
		DownloadView view = new DownloadView();
		return view;
	}


}

