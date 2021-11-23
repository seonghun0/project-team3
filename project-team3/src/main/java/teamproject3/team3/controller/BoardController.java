package teamproject3.team3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(path = {"/board"})
public class BoardController {
	
	
	@GetMapping(path = {"boardmain"})
	public String boardmain() {
		return "board/boardmain";
	}
	
	@GetMapping(path = {"/write"})
	public String write() {
		return "board/write";
	}

}

