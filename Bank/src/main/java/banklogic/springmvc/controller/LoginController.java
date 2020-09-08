package banklogic.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import banklogic.springmvc.model.Login;
import banklogic.springmvc.model.User;
import banklogic.springmvc.service.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());

		return mav;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute("login") Login login) {

		String userName = login.getUsername();
		String password = login.getPassword();
		if ("admin".equalsIgnoreCase(userName) && "admin".equalsIgnoreCase(password)) {
			ModelAndView mv = new ModelAndView("welcome");
			return mv;
		} else {
			ModelAndView mv = new ModelAndView("login");
			return mv;
		}

	}
}