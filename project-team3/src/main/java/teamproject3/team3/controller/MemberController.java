package teamproject3.team3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path= { "/member" })
public class MemberController {
	
	@GetMapping(path = { "/login" })
	public String showLoginForm() {
		return "member/login";
	}
	
	@GetMapping(path = { "/join" })
	public String showRegisterForm() {
		return"member/join";
	}
	
	
}
