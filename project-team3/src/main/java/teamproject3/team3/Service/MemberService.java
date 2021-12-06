package teamproject3.team3.Service;

import java.util.List;

import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.jjimVO;
import teamproject3.team3.vo.memberVO;
import teamproject3.team3.vo.movieVO;
import teamproject3.team3.vo.reviewVO;

public interface MemberService {

	List<genreVO> getGenre();

	void insertmember(String memberId, String passwd, String year, String month, String day, String sex);

	void insertgenre(String memberId, int[] genre);

	int idcheck(String memberId);

	memberVO login(String memberId, String passwd);

	int pwdcheck(String memberId, String passwd);

	List<movieVO> findtop10();

	List<movieVO> findpop();

	List<movieVO> prmovie();

	List<genreVO> findusergenre(String memberId);

	List<jjimVO> findjjimlist(String memberId);

	void updatepwd(String memberId, String newpwd);

	List<memberVO> membercheck();

	void updateuser(memberVO member);

	void deleteuser(memberVO member);

	void deletegenre(memberVO member);


}