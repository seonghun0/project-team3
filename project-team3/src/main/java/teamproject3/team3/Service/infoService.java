package teamproject3.team3.Service;

import java.util.List;

import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.reviewVO;

public interface infoService {

	List<genreVO> getgenre();

	List<movieVO> getmovie(int from, int to);

	List<movieVO> getinfo(int movie_id);

	void insertreview(reviewVO review);

	List<reviewVO> findlist(int movie_id);

	int check(String member_id, int movie_id);

	void deletereview(reviewVO review);

	List<movieVO> getmovie_genre(int genre, int from, int to);

	void insertrating(reviewVO review);

	void deleterating(reviewVO review);

	List<movieVO> moviesearch(String search);

	List<movieVO> findmovie(String title);

	int counttitle(String title);

	int countjjim(reviewVO jjim);

	void addjjim(reviewVO jjim);

	void deletejjim(reviewVO jjim);

}