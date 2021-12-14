package teamproject3.team3.Service;

import java.util.List;

import lombok.Setter;
import teamproject3.team3.mapper.infoMapper;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.jjimVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.personVO;
import teamproject3.team3.vo.reviewVO;
import teamproject3.team3.vo.videoVO;

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

	@Override
	public List<movieVO> getmovie_genre(int genre, int from, int to) {
		return infomapper.getmovie_genre(genre, from, to);
	}

	@Override
	public void insertrating(reviewVO review) {
		infomapper.insertrating(review);
	}

	@Override
	public void deleterating(reviewVO review) {
		infomapper.deleterating(review);
	}

	@Override
	public List<movieVO> moviesearch(String search) {
		return infomapper.moviesearch(search);
	}

	@Override
	public List<movieVO> findmovie(String title) {
		return infomapper.findtitle(title);
	}

	@Override
	public int counttitle(String title) {
		return infomapper.counttitle(title);
	}

	@Override
	public int countjjim(jjimVO jjim) {
		return infomapper.countjjim(jjim);
	}

	@Override
	public void addjjim(jjimVO jjim) {
		infomapper.addjjim(jjim);
	}

	@Override
	public void deletejjim(jjimVO jjim) {
		infomapper.deletejjim(jjim);
	}

	@Override
	public List<videoVO> findvideo(int movie_id) {
		return infomapper.findvideo(movie_id);
	}

	@Override
	public List<personVO> findactor(int movie_id) {
		return infomapper.findactor(movie_id);
	}

	@Override
	public List<personVO> findcrew(int movie_id) {
		return infomapper.findcrew(movie_id);
	}

	@Override
	public List<genreVO> moviegenre(int movie_id) {
		return infomapper.moviegenre(movie_id);
	}

	@Override
	public List<movieVO> getmovie_ol(String ol, int from, int to) {
		return infomapper.movie_ol(ol, from, to);
	}

	@Override
	public List<movieVO> getmovie_ol_genre(int genre, String ol, int from, int to) {
		return infomapper.movie_ol_genre(genre, ol, from, to);
	}

	@Override
	public List<movieVO> findmovieId(List<movieVO> movies) {
		return infomapper.findmovieId(movies);
	}

	
}
