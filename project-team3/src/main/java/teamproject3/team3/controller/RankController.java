package teamproject3.team3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import teamproject3.team3.Service.rankService;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.reviewVO;

@Controller
@RequestMapping(path= { "/ranking" })
public class RankController {
	
	@Autowired
	@Qualifier("rankService")
	private rankService rankService;
	
	@GetMapping(path = { "/rankmain" })
	public String showrankForm(Model model) {
		
		List<movieVO> movie = rankService.best5();
		List<movieVO> seventys = rankService.seventys(); 
		List<movieVO> drama = rankService.drama();
		List<movieVO> comedy = rankService.comedy();
		List<movieVO> action = rankService.action();
		List<movieVO> thriller = rankService.thriller();
		
		model.addAttribute("best6",movie);
		model.addAttribute("seventys",seventys);
		model.addAttribute("drama",drama);
		model.addAttribute("comedy",comedy);
		model.addAttribute("action",action);
		model.addAttribute("thriller",thriller);
				
		return "ranking/rankmain";
	}
	
}
