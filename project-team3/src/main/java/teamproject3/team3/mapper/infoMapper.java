package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.reviewVO;

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

	
}