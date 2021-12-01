package teamproject3.team3.Service;

import java.util.List;

import lombok.Setter;
import teamproject3.team3.mapper.infoMapper;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.reviewVO;

public class infoServiceImpl implements infoService {

	@Setter
	private infoMapper infomapper;

	@Override
	public List<genreVO> getgenre() {
		return infomapper.findgenre();
	}

	@Override
	public List<movieVO> getinfo(int movie_id) {
		return infomapper.findinfo(movie_id);
	}

	@Override
	public List<movieVO> getmovie(int from, int to) {
		return infomapper.findmovie(from, to);
	}

	@Override
	public void insertreview(reviewVO review) {
		infomapper.insertreview(review);
	}

	@Override
	public List<reviewVO> findlist(int movie_id) {
		return infomapper.findreview(movie_id);
	}

	@Override
	public int check(String member_id, int movie_id) {
		return infomapper.check(member_id, movie_id);
	}

	@Override
	public void deletereview(reviewVO review) {
		infomapper.deletereview(review);
	}
	
	
}
