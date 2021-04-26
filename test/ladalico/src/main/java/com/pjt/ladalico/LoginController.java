package com.pjt.ladalico;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {

	// 로그인 submit
	@RequestMapping(value = "/loginPost.do", method = RequestMethod.POST)
	public void loginPost(LoginDTO dto, Model model, HttpSession session) throws Exception {
		UserVO vo = null;
		// DB 비밀번호와 로그인 비밀번호가 틀릴경우 loginFail 모델은 내려준다.
		if (!(dto.getID().equals("123") && dto.getPassword().equals("123"))) {
			model.addAttribute("loginFail", true);
			return;
		}

		UserVO vo = userService.login(dto);
		model.addAttribute("userVO", vo); // model에 {userVO : vo} 저장
	}
}