package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import teamproject3.team3.vo.BoardAttachVO;
import teamproject3.team3.vo.BoardVO;

@Mapper
public interface BoardMapper {

	void insertBoard(BoardVO board);
	
	List<BoardVO> selectAll();
	
	BoardVO selectBoardByBoardNo(int boardNo);
	
	void updateBoardDeleted(int boardNo);
	
	void updateBoardReadCount(int boardNo);

	void updateBoard(BoardVO board);
	
	void insertBoardAttach(BoardAttachVO attachment);

	BoardAttachVO selectBoardAttachByAttachNo(int attachNo);
	

}
