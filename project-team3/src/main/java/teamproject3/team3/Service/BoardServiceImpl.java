package teamproject3.team3.Service;

import java.util.List;

import lombok.Setter;
import teamproject3.team3.mapper.BoardMapper;
import teamproject3.team3.vo.BoardAttachVO;
import teamproject3.team3.vo.BoardVO;

public class BoardServiceImpl implements BoardService{
	
	@Setter
	private BoardMapper boardMapper;
	
	@Override
	public int writeBoard(BoardVO board) {
		
		// board.boardNo ==> null
		
		//boardDao.insertBoard(board);		
		boardMapper.insertBoard(board); // Board 테이블에 데이터 저장 ( 데이터베이스에 새 boardNo 생성 )
		
		// 데이터베이스에 만들어진 boardNo를 조회하는 작업 필요 (mybaits가 자동으로 처리, useGeneratedKeys=true, ... )
		// board.boardNo ==> 새로 생성된 boardNo
		if (board.getAttachments() != null) {
			for (BoardAttachVO attachment : board.getAttachments()) {
				attachment.setBoardNo(board.getBoardNo());
				boardMapper.insertBoardAttach(attachment); // BoardAttach 테이블에 데이터 저장
			}
		}
				
		return 0;
	}
	
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
	public BoardAttachVO findBoardAttachByAttachNo(int attachNo) {
		return boardMapper.selectBoardAttachByAttachNo(attachNo);
	}






}
