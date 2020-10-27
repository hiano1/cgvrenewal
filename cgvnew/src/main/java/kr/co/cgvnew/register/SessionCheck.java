package kr.co.cgvnew.register;

import javax.servlet.http.HttpSession;

public class SessionCheck {

	public static String getLoginId(HttpSession session) {
		String mb_id
			= (String) session.getAttribute("login_id_session");
		return mb_id;
	}//getLoginId

	public static boolean isLogin(HttpSession session) {
		String mb_id
			= (String) session.getAttribute("login_id_session");
		if(mb_id != null && mb_id.length() > 0) {
			return true;
		} else {
			return false;
		}
	}//isLogin

}//class
