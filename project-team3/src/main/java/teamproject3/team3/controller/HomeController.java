package teamproject3.team3.controller;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import teamproject3.team3.Service.MemberService;
import teamproject3.team3.Service.infoService;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.personVO;

@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;
	
	@Autowired
	@Qualifier("infoService")
	private infoService infoService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<movieVO> movie  = memberService.findtop10();
		List<movieVO> popmovie  = memberService.findpop();
		List<movieVO> now = memberService.findnow();
		
		List<movieVO> prmovie = memberService.prmovie();
		
		model.addAttribute("now",now);
		model.addAttribute("prmovie",prmovie);
		model.addAttribute("top", movie);
		model.addAttribute("pop",popmovie);
		
		return "home";
	}
	
	@RequestMapping(path= {"/search"}, method = RequestMethod.GET)
	@ResponseBody
	public String search(String search) {
		
		List<movieVO> list = infoService.moviesearch(search);
		Gson gson = new Gson();
		String json = gson.toJson(list);
		
		return json;
	}
	@RequestMapping(path= {"/findmovie"}, method = RequestMethod.GET)
	@ResponseBody
	public String findmovie(String title) {
		
		int count = infoService.counttitle(title);
		if (count==0) {
			Gson gson = new Gson();
			String json = gson.toJson(0);
			
			return json;
		}else {
			List<movieVO> list = infoService.findmovie(title);
			Gson gson = new Gson();
			String json = gson.toJson(list.get(0));
			
			return json;
		}
		
	}
	
	@PostMapping(path = { "/genre" })
	@ResponseBody
	public List<movieVO> requestJson(String movie_id) {
		
		URL url = null;
		URLConnection conn = null;
		InputStream is = null;
		InputStreamReader isr = null;
		List<movieVO> movie =null;
		
		Gson gson = new Gson();
		try {
			url = new URL("http://127.0.0.1:5000/team-three/genre?movie_id="+movie_id);
			conn = url.openConnection();
			is = conn.getInputStream();
			isr = new InputStreamReader(is);
			Type collectionType = new TypeToken<Collection<movieVO>>() {}.getType();
			movie = gson.fromJson(isr, collectionType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return movie;
	}
	
}
