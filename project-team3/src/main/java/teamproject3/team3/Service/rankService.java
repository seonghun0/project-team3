package teamproject3.team3.Service;

import java.util.List;

import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.ticketingVO;

public interface rankService {

	List<movieVO> best5();

	List<movieVO> seventys();

	List<movieVO> drama();

	List<movieVO> comedy();

	List<movieVO> action();

	List<movieVO> thriller();

	List<ticketingVO> ticketing();

}