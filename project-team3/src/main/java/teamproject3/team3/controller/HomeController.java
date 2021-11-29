package teamproject3.team3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import teamproject3.team3.Service.MemberService;
import teamproject3.team3.vo.movieVO;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<movieVO> movie  = memberService.findtop10();
		List<movieVO> popmovie  = memberService.findpop();
		
		model.addAttribute("top10", movie);
		model.addAttribute("pop",popmovie);
		
		return "home";
	}
	
}
