package teamproject3.team3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import teamproject3.team3.Service.infoService;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;

@Controller
@RequestMapping(path= { "/movie" })
public class InfoController {
	
	@Autowired
	@Qualifier("infoService")
	private infoService infoService;
	
	@GetMapping(path = { "/list" })
	public String showinfoForm(Model model) {
		
		List<genreVO> genre = infoService.getgenre();
		List<movieVO> movie = infoService.getmovie();
		
		model.addAttribute("movie", movie);
		model.addAttribute("genre", genre);
		
		return "movie/list";
	}
	
	@GetMapping(path = { "/info" })
	public String showmovieinfoForm(int movie_id, Model model) {
		
		System.out.println(movie_id);
		List<movieVO> movieinfo = infoService.getinfo(movie_id);
		
		if (movieinfo == null || movieinfo.size() == 0) {
			return "redirect:list";
		}
		System.out.println(movieinfo);
		model.addAttribute("movieinfo",movieinfo.get(0));
		
		return "movie/info";
	}
	
}
