package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.ticketingVO;

@Mapper
public interface rankMapper {

	List<movieVO> best5();

	List<movieVO> seventys();

	List<movieVO> drama();

	List<movieVO> comedy();

	List<movieVO> action();

	List<movieVO> thriller();

	List<ticketingVO> ticketing();
	
}