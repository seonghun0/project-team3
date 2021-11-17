package teamproject3.team3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path= { "/ranking" })
public class RankController {
	
	@GetMapping(path = { "/rankmain" })
	public String showrankForm() {
		return "ranking/rankmain";
	}
	
}
