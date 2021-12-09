package teamproject3.team3.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import teamproject3.team3.vo.MemberGenreVO;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.jjimVO;
import teamproject3.team3.vo.memberVO;
import teamproject3.team3.vo.movieVO;

@Mapper
public interface MemberMapper {

	List<genreVO> getGenre();

	void insertmember(@Param("memberId") String memberId,
					  @Param("passwd") String passwd, 
					  @Param("year") String year,
					  @Param("month") String month,
					  @Param("day") String day, 
					  @Param("sex") String sex);

	void insertgenre(List<MemberGenreVO> mgs);

	int idcheck(String memberId);

	memberVO login(@Param("memberId") String memberId, @Param("passwd") String passwd);

	int pwdcheck(@Param("memberId") String memberId, @Param("passwd") String passwd);

	List<movieVO> findtop10();

	List<movieVO> findpop();

	List<movieVO> prmovie();

	List<genreVO> findusergenre(@Param("memberId") String memberId);

	List<jjimVO> findjjimlist(@Param("memberId") String memberId);

	void updatepwd(@Param("memberId") String memberId,@Param("npd") String npd);

	List<memberVO> membercheck();

	void updateuser(memberVO member);

	void deleteuser(memberVO member);

	void deletegenre(memberVO member);

	
}