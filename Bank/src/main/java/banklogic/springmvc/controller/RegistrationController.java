package banklogic.springmvc.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import banklogic.springmvc.model.CountMap;
import banklogic.springmvc.model.User;
import banklogic.springmvc.service.UserService;

@Controller
public class RegistrationController {
	@Autowired
	public UserService userService;
	@Autowired
	private JavaMailSender mailSenderObj;
	boolean error = false;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());

		return mav;
	}

	@ModelAttribute("cList")
	public Map<String, String> getCountryList() {
		List<CountMap> spinn = userService.clist();
		Map<String, String> cList = new HashMap<String, String>();
		for (int i = 0; i <= spinn.size() - 1; i++) {
			cList.put(spinn.get(i).getCountryname(), spinn.get(i).getCountryname());
		}
		return cList;
	}

	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user, BindingResult result, SessionStatus status) {
		String accnum = "", pin = "";
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("error", "User Already Exists!!!");
		String stat = userService.register(user);
		String[] split = stat.split("@");
		accnum = split[0];
		pin = split[1];
		if (stat.isEmpty()) {
			mav.addObject("error", "User Already Exists!!!");
			mav.addObject("user", new User());
			return mav;
		} else {

			final String mail = user.getEmail();
			final String message = "Your Account Has Been Created Successfully!!!" +"\n"+ "Your Account Number is :" + accnum + ""
					+"\n"+ "Your 4-Digit Pin Number is: " + pin + "";
			final String subject = "Account Created";

			mailSenderObj.send(new MimeMessagePreparator() {

				public void prepare(MimeMessage mimeMessage) throws Exception {

					MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					mimeMsgHelperObj.setTo(mail);
					mimeMsgHelperObj.setFrom("thiruuser");
					mimeMsgHelperObj.setText(message);
					mimeMsgHelperObj.setSubject(subject);
					
				}
			});

		}

		return new ModelAndView("welcome", "firstname", user.getFirstname());
	}

}
