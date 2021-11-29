package teamproject3.team3.Service;

import java.util.ArrayList;
import java.util.List;

import lombok.Setter;
import teamproject3.team3.common.Util;
import teamproject3.team3.mapper.MemberMapper;
import teamproject3.team3.vo.MemberGenreVO;
import teamproject3.team3.vo.genreVO;
import teamproject3.team3.vo.memberVO;
import teamproject3.team3.vo.movieVO;

public class MemberServiceImpl implements MemberService {

	@Setter
	private MemberMapper memberMapper;

	@Override
	public List<genreVO> getGenre() {
		return memberMapper.getGenre();
	}

	@Override
	public void insertmember(String memberId, String passwd, String year, String month, String day, String sex) {
		
		//passwd 암호화
		String hashedPasswd = Util.getHashedString(passwd, "SHA-256");
		passwd = hashedPasswd;
		
		memberMapper.insertmember(memberId, passwd, year, month, day, sex );		
	}

	@Override
	public void insertgenre(String memberId, int[] genre) {
		ArrayList<MemberGenreVO> mgs = new ArrayList<MemberGenreVO>();
		for (int g : genre) {
			MemberGenreVO mg = new MemberGenreVO();
			mg.setMemberId(memberId);
			mg.setGenreId(g);
			mgs.add(mg);
		}
		memberMapper.insertgenre(mgs);
	}

	@Override
	public int idcheck(String memberId) {
		return memberMapper.idcheck(memberId);
	}

	@Override
	public memberVO login(String memberId, String passwd) {
		
		passwd = Util.getHashedString(passwd, "SHA-256");
		
		return memberMapper.login(memberId, passwd);
	}

	@Override
	public int pwdcheck(String memberId, String passwd) {
		
		passwd = Util.getHashedString(passwd, "SHA-256");
		
		return memberMapper.pwdcheck(memberId, passwd);
	}

	@Override
	public List<movieVO> findtop10() {
		return memberMapper.findtop10();
	}

	@Override
	public List<movieVO> findpop() {
		return memberMapper.findpop();
	}
}
