package kr.co.cgvnew.mycgv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MycgvServiceImpl implements MycgvService {
	
	@Autowired
	private MycgvDAO dao;
	
	@Override
	public List<MycgvDTO> myInfo(String myInfo) {
		
		List<MycgvDTO> list = dao.myInfo(myInfo);
		return list;
	}//myInfo

	@Override
	public MycgvDTO memberInfo(String memberInfo) {
		MycgvDTO info = dao.memberInfo(memberInfo);
		
		String tmpBirth = info.getMb_birth();
		info.setMb_birth1(tmpBirth.substring(0, tmpBirth.indexOf("년")));
		info.setMb_birth2(tmpBirth.substring(tmpBirth.indexOf("년")+1, tmpBirth.indexOf("월")));
		info.setMb_birth3(tmpBirth.substring(tmpBirth.indexOf("월")+1, tmpBirth.indexOf("일")));
		
		String [] telArr = info.getMb_tel().split("-");
		info.setMb_tel1(telArr[0]);
		info.setMb_tel2(telArr[1]);
		info.setMb_tel3(telArr[2]);
		
		String [] emailArr = info.getMb_email().split("@");
		info.setMb_email1(emailArr[0]);
		info.setMb_email2(emailArr[1]);
		
		return info;
	}//memberInfo: 회원 정보 수정 페이지

	@Override
	public int infoUpdate(MycgvDTO inDto) {
		int updateCnt = dao.infoUpdate(inDto);
		return updateCnt;
	}//infoUpdate
	
	@Override
	public List<MycgvDTO> myInfo2(String myInfo) {
		List<MycgvDTO> list2 = dao.myInfo2(myInfo);
		return list2;
	}

	@Override
	public int mbrDelete(MycgvDTO inDto) {
		int deleteCnt = dao.mbrDelete(inDto);
		return deleteCnt;
	}//mbrDelete

}//class
