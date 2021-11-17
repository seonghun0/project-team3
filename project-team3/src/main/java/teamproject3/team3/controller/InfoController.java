package teamproject3.team3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path= { "/movieinfo" })
public class InfoController {
	
	@GetMapping(path = { "/info" })
	public String showrankForm() {
		return "movieinfo/info";
	}
	
}
