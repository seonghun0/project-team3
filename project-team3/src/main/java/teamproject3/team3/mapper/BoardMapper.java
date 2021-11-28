package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import teamproject3.team3.vo.BoardVO;

@Mapper
public interface BoardMapper {

	void insertBoard(@Param("title") String title,
					 @Param("member_id") String member_id, 
					 @Param("content") String content);
	
	List<BoardVO> selectAll();

	BoardVO selectBoardByBoardNo(int boardNo);

	void updateBoardDeleted(int boardNo);

	void updateBoardReadCount(int boardNo);
	
	void updateBoard(BoardVO board);

	
	

}
