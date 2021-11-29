package teamproject3.team3.Service;

import java.util.List;

import lombok.Setter;
import teamproject3.team3.mapper.infoMapper;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;

public class infoServiceImpl implements infoService {

	@Setter
	private infoMapper infomapper;

	@Override
	public List<genreVO> getgenre() {
		return infomapper.findgenre();
	}

	@Override
	public List<movieVO> getmovie() {
		return infomapper.findmovie();
	}

	@Override
	public List<movieVO> getinfo(int movie_id) {
		return infomapper.findinfo(movie_id);
	}
	
	
}
