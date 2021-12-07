package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.jjimVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.personVO;
import teamproject3.team3.vo.reviewVO;
import teamproject3.team3.vo.videoVO;

@Mapper
public interface infoMapper {

	List<genreVO> findgenre();

	List<movieVO> findmovie(@Param("from") int from,@Param("to") int to);

	List<movieVO> findinfo(int movie_id);

	void insertreview(reviewVO review);

	List<reviewVO> findreview(@Param("movie_id") int movie_id);

	int check(@Param("member_id") String member_id,@Param("movie_id") int movie_id);

	void deletereview(reviewVO review);

	List<movieVO> getmovie_genre(@Param("genre") int genre, @Param("from") int from,@Param("to") int to);

	void insertrating(reviewVO review);

	void deleterating(reviewVO review);

	List<movieVO> moviesearch(@Param("search") String search);

	List<movieVO> findtitle(@Param("title") String title);

	int counttitle(String title);

	int countjjim(jjimVO jjim);

	void addjjim(jjimVO jjim);

	void deletejjim(jjimVO jjim);

	List<videoVO> findvideo(@Param("movie_id") int movie_id);

	List<personVO> findactor(@Param("movie_id") int movie_id);

	List<personVO> findcrew(@Param("movie_id") int movie_id);

	
}