package teamproject3.team3.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import teamproject3.team3.Service.MemberService;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.jjimVO;
import teamproject3.team3.vo.memberVO;

@Controller
@RequestMapping(path= { "/member" })
public class MemberController {
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	@GetMapping(path = { "/login" })
	public String showLoginForm() {
		return "member/login";
	}
	
	@PostMapping(path = {"/login"})
	public String login(String memberId, String passwd, HttpSession session, HttpServletRequest request) {
		
		memberVO member = memberService.login(memberId, passwd);
		if(member != null) {
			session.setAttribute("loginuser", member);
			return "redirect:/";
		}
		
		return "redirect:login";
	}
	
	@PostMapping(path= {"/passwdcheck"})
	@ResponseBody
	public int passwdcheck(String memberId, String passwd) {
		
		int count = memberService.pwdcheck(memberId, passwd);
		
		return count;
	}
	
	@GetMapping(path = { "/join" })
	public String showjoinForm(Model model) {
		
		List<genreVO> genrelist = memberService.getGenre();
		
		model.addAttribute("genre", genrelist);
		
		return "member/join";
	}
	
	@PostMapping(path = { "/join" })
	public String join(String memberId, String passwd, String year, String month, String day, String sex, int[] genre) {
		
		memberService.insertmember(memberId, passwd, year, month, day, sex);
		memberService.insertgenre(memberId, genre);
		
		return "redirect:/member/login";
	}
	
	@PostMapping(path= { "/idcheck" })
	@ResponseBody
	public int idcheck(String memberId) {
		
		int count = memberService.idcheck(memberId);
		
		return count;
	}
	
	@GetMapping(path= { "/logout" })
	public String LogoutForm(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return"redirect:/";
	}
	
	@GetMapping(path = { "/profile" })
	public String showprofileForm() {
		return "member/profile";
	}
	
	
}
