package teamproject3.team3.Service;

import java.util.List;

import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;

public interface infoService {

	List<genreVO> getgenre();

	List<movieVO> getmovie();

	List<movieVO> getinfo(int movie_id);

}