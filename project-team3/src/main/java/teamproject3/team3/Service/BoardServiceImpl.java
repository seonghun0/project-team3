package teamproject3.team3.Service;

import java.util.List;

import teamproject3.team3.mapper.BoardMapper;
import teamproject3.team3.vo.BoardVO;

import lombok.Setter;

public class BoardServiceImpl implements BoardService{
	
	@Setter
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> findAll() {
		
		List<BoardVO> boards = boardMapper.selectAll();
		
		return boards;
	}

	@Override
	public BoardVO findBoardByBoardNo(int boardNo) {
		BoardVO board = boardMapper.selectBoardByBoardNo(boardNo);
		return board;
	}
	@Override
	public void increaseBoardReadCount(int boardNo) {
		boardMapper.updateBoardReadCount(boardNo);
	}
	
	@Override
	public void deleteBoard(int boardNo) {
		boardMapper.updateBoardDeleted(boardNo);
	}
	
	@Override
	public void updateBoard(BoardVO board) {
		boardMapper.updateBoard(board);
	}

	@Override
	public void writeBoard(String title, String member_id, String content) {
		boardMapper.insertBoard(title, member_id, content);
		
	}

}
