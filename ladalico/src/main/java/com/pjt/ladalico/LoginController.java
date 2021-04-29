package com.pjt.ladalico;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public ModelAndView loginGet() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public ModelAndView loginPost(@RequestParam("id") String id, @RequestParam("pw") String pw) {
		ModelAndView mav = new ModelAndView();
		String result = loginService.getLoginResult(id, pw);
		mav.addObject("result", result);
		mav.setViewName("loginResult");
		return mav;
	}
}
