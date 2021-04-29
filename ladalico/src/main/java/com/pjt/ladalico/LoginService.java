package com.pjt.ladalico;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public String getLoginResult(String id, String pw) {
		String result = "";
		if (!"admin".equals(id)) {
			result = "ID가 틀렸습니다.";
		} else if (!"admin".equals(pw)) {
			result = "비밀번호가 틀렸습니다.";
		} else {
			result = "로그인 성공";
		}

		return result;
	}
}
