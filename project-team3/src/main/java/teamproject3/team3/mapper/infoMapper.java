package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.movieVO;

@Mapper
public interface infoMapper {

	List<genreVO> findgenre();

	List<movieVO> findmovie();

	List<movieVO> findinfo(int movie_id);

	
}