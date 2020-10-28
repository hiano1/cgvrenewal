package kr.co.cgvnew.register;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {
	
	@Autowired
	private RegisterDAO dao;
	
	
	public int register(RegisterDTO inDto) {
		int successCnt = dao.register(inDto);
		return successCnt;
	}//register

	
	public int login(RegisterDTO inDto) {
		int successCnt = dao.idCheck(inDto);
		/* id check
		   select count(id) cnt from mbr where id = #{id};
		   cnt == 0 : id 없음, cnt > 0 : id 있음.
		 */
		if(successCnt > 0) {//id 존재함.
			successCnt = dao.login(inDto);
			/* login check
			   select count(id) cnt from mbr
			   where id = #{id} and pwd = #{pwd};
			   cnt == 0 : pwd 오류, cnt == 1 : 로그인 성공
			   cnt > 1 : 같은 id를 가진 회원이 2 이상 : 회원 가입 논리 오류.
			 */
			return successCnt;
		} else {//id 존재 안함.
			return -1;
		}

	}//login


	public int idChk(String mb_id) {
		int idCount = dao.idChk(mb_id);
		return idCount;
	}//idChk
	
	
	
	
}//class
