package kr.co.cgvnew.register;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService service;
	
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(RegisterDTO inDto) {
		
		int successCnt = service.register(inDto);

		if(successCnt == 1) {//회원 가입 성공
			return "home";
		} else {//회원 가입 실패
			return "register/register_fail";
		}
	}//register
	
	
	@RequestMapping(value = "/registerForm", method = RequestMethod.GET)
	public String registerForm() {
		return "register/register_form";
	}//registerForm
	
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(RegisterDTO inDto, Model model, HttpSession session) {
		
		int successCnt = service.login(inDto); 
		
		if(successCnt == 1) { //로그인 성공.
			session.setAttribute("login_id_session", inDto.getMb_login_id());
			return "home";
		}else { //로그인 실패.
			if(successCnt == -1) { //id 없음.
				model.addAttribute("fail_msg", "");
			}else { //기타.
				model.addAttribute("fail_msg", "");
			}
			return "register/login_fail";
		}
		
	}//login
	
	
	
	@RequestMapping(value="loginForm", method=RequestMethod.GET)
	public String loginForm() {
		return "register/login_form";
	}//loginForm
	
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}//logout
	
	
	
	@ResponseBody
	@RequestMapping(value="/idChk", method=RequestMethod.GET)
	public String idChk(String mb_id) {
		int idCount = service.idChk(mb_id);
		return ""+idCount;
	}//idCheck //회원가입 시 아이디 중복 체크
	
	
	
}//class



