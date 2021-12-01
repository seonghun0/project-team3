package teamproject3.team3.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import teamproject3.team3.Service.infoService;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.memberVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.reviewVO;

@Controller
@RequestMapping(path= { "/movie" })
public class InfoController {
	
	@Autowired
	@Qualifier("infoService")
	private infoService infoService;
	
	@GetMapping(path = { "/list" })
	public String showinfoForm(Model model) {
		
		int from = 0;
		int to = from +24;
		
		List<genreVO> genre = infoService.getgenre();
		List<movieVO> movie = infoService.getmovie(from, to);
		
		model.addAttribute("movie", movie);
		model.addAttribute("genre", genre);
		
		return "movie/list";
	}
	
	@GetMapping(path = { "/info" })
	public String showmovieinfoForm(int movie_id, Model model) {
		
		List<movieVO> movieinfo = infoService.getinfo(movie_id);
		List<reviewVO> list = infoService.findlist(movie_id);
		
		if (movieinfo == null || movieinfo.size() == 0) {
			return "redirect:list";
		}
		
		if (list != null) {
			model.addAttribute("list",list);
		}
		model.addAttribute("movieinfo",movieinfo.get(0));
		
		return "movie/info";
	}
	
	@GetMapping(path= { "/infinite" })
	@ResponseBody
	public List<movieVO> infinity(int count){
		
		int from = count*24;
		int to = from +24;
		
		List<movieVO> list = infoService.getmovie(from, to);
		return list;
	}
	
	@PostMapping(path= {"/review"}, produces="application/json;charset=utf-8")
	@ResponseBody
	public String reviewlist(reviewVO review, HttpSession session, Model model){
		
		memberVO member = (memberVO)session.getAttribute("loginuser");
		
		review.setMember_id(member.getMemberId());
		
		int check = infoService.check(review.getMember_id(), review.getMovie_id());
		System.out.println(check); 
		if (check == 1) {
			String json = null;
			return json;
		}else {
			infoService.insertreview(review);
			List<reviewVO> vo = infoService.findlist(review.getMovie_id());
			model.addAttribute("reviewlist",vo);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
			String json = gson.toJson(vo);
			return json;
		}
		
	}
	
	@PostMapping(path= {"/deletereview"}, produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleterevie(reviewVO review, HttpSession session, Model model) {
		
		memberVO member = (memberVO)session.getAttribute("loginuser");
		
		review.setMember_id(member.getMemberId());
		infoService.deletereview(review);
		List<reviewVO> vo = infoService.findlist(review.getMovie_id());
		System.out.println(vo);
		model.addAttribute("reviewlist",vo);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
		String json = gson.toJson(vo);
		return json;
	}
	
//	@PostMapping(path= {"/review2"}, produces="application/json;charset=utf-8")
//	@ResponseBody
//	public String reviewlist2(reviewVO review, HttpSession session, Model model){
//		
//		memberVO member = (memberVO)session.getAttribute("loginuser");
//		
//		review.setMember_id(member.getMemberId());
//		
//		infoService.insertreview(review);
//		
//		int check = infoService.check(review.getMember_id(), review.getMovie_id());
//		
//		List<reviewVO> vo = infoService.findlist(review.getMovie_id());
//		
//		Gson gson = new Gson();
//		
//		HashMap<String, Integer> map = new HashMap<String, Integer>();
//		map.put("A", check);
//		map.put("B", vo);
//		String json2 = gson.toJson(map);
//		
//		return json2;
//	}
}
