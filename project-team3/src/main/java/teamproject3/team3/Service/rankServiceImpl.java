package teamproject3.team3.Service;

import java.util.List;

import lombok.Setter;
import teamproject3.team3.mapper.rankMapper;
import teamproject3.team3.vo.movieVO;

public class rankServiceImpl implements rankService {
	
	@Setter
	private rankMapper rankmapper;
	
	@Override
	public List<movieVO> best5() {
		return rankmapper.best5();
	}

	@Override
	public List<movieVO> seventys() {
		return rankmapper.seventys();
	}

	@Override
	public List<movieVO> drama() {
		return rankmapper.drama();
	}

	@Override
	public List<movieVO> comedy() {
		return rankmapper.comedy();
	}

	@Override
	public List<movieVO> action() {
		return rankmapper.action();
	}

	@Override
	public List<movieVO> thriller() {
		return rankmapper.thriller();
	}

}
