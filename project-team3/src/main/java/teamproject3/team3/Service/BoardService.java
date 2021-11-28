package teamproject3.team3.Service;

import java.util.List;

import teamproject3.team3.vo.BoardVO;

public interface BoardService {

	List<BoardVO> findAll();

	BoardVO findBoardByBoardNo(int boardNo);

	void deleteBoard(int boardNo);

	void increaseBoardReadCount(int boardNo);

	void updateBoard(BoardVO board);

	void writeBoard(String title, String member_id, String content);

}

