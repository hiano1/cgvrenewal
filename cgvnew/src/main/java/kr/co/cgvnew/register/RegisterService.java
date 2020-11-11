package kr.co.cgvnew.register;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {
	
	@Autowired
	private RegisterDAO dao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
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

	public List<RegisterDTO> findId(RegisterDTO inDto) {
		List<RegisterDTO> list = dao.findId(inDto);
		return list;
	}//findId


	public int findPwd(RegisterDTO inDto) throws MessagingException {
		
		int successCnt = 1;
		int userYN = dao.userYNForPWD(inDto);
		
		if(userYN <= 0) {
			return 0; //회원 정보 없음.
		} else if(userYN == 1) {
			StringBuilder sb = new StringBuilder();
			for(int i=0; i<3; i++) {
				sb.append(smallEng[(int) (Math.random() * 25 + 1)]);
				sb.append(bigEng[(int) (Math.random() * 25 + 1)]);
				sb.append(num[(int) (Math.random() * 9 + 1)]);
				sb.append(special[(int) (Math.random() * 9 + 1)]);
				}//for
			
			inDto.setMb_pwd(sb.toString());
			successCnt = dao.updatePwd(inDto);
			
			if(successCnt <= 0) {
				return -2; //패스워드 수정 실패.
				}
			
			//이메일 전송 start
			String mailFrom = "aday99b@gmail.com";
			String mailTo = inDto.getMb_email();
			String title = "[CGV] [임시 비밀번호]";
			String content = "[CGV] [임시 비밀번호] : "+inDto.getMb_pwd();
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			
			messageHelper.setFrom(mailFrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(mailTo);     // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content);  // 메일 내용
			mailSender.send(message); 
			} else if(userYN >= 2) {
				return -1; //회원 정보 너무 많음.
			}
		
			return successCnt;
				
	}//findPwd
	
		
		private char[] smallEng = {'a', 'b', 'c', 'd', 'e'
				, 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o'
				, 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y'
				, 'z'};
		private char[] bigEng = {'A', 'B', 'C', 'D', 'E', 'F', 'G'
				, 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q'
				, 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
		private char[] num = {'1', '2', '3', '4', '5'
				, '6', '7', '8', '9', '0'};
		private char[] special = {'!', '@', '#', '$', '%'
				, '^', '&', '*', '(', ')'};
		
	
	
}//class
