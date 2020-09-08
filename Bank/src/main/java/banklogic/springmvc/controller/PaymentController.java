package banklogic.springmvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import banklogic.springmvc.model.User;
import banklogic.springmvc.service.UserService;

@Controller
public class PaymentController {
	
	 @Autowired
		public UserService userService;
		 public HashMap<String, String> map;
		 @RequestMapping(value = "/payment", method = RequestMethod.GET)
		  public ModelAndView user() {
		     User user = new User();	  
			 
			  ModelAndView modelAndView = new ModelAndView("payment", "command", user);
			  return modelAndView;
		  }
		 
		 @RequestMapping(value = "/paymentprocess", method = RequestMethod.POST)
		  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
		      @ModelAttribute("pay") User user) 
		  {
			 String result = userService.userPay(user);
			 if(result == "1") {
				 
				 try {
					response.sendRedirect("http://www.google.com");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			 }else {
				 
			 }
			 
			return new ModelAndView("addamount","command",user);
		  }

}
