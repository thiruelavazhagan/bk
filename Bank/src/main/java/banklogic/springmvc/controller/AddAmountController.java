package banklogic.springmvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

import banklogic.springmvc.dao.UserDaoImpl;
import banklogic.springmvc.model.Login;
import banklogic.springmvc.model.User;
import banklogic.springmvc.service.UserService;

@Controller
public class AddAmountController {
	
	 @Autowired
	public UserService userService;
	 @Autowired
		private JavaMailSender mailSenderObj;
	 public HashMap<String, String> map;
	 @RequestMapping(value = "/addamount", method = RequestMethod.GET)
	  public ModelAndView user() {
	     User user = new User();	  
		 
		  ModelAndView modelAndView = new ModelAndView("addamount", "command", user);
		  return modelAndView;
	  }
	
	 @ModelAttribute("countryList")
	   public Map<String, String> getCountryList() {
		 map = new HashMap<String, String>();
		   List<User>spinn = userService.list();
	      Map<String, String> countryList = new HashMap<String, String>();
	      for(int i=0;i<=spinn.size()-1;i++) {
	    	  countryList.put(spinn.get(i).getFirstname()+"@"+spinn.get(i).getAccno()+"@"+spinn.get(i).getEmail(), spinn.get(i).getAccno());
	    	  map.put(spinn.get(i).getAccno(), spinn.get(i).getTotalamnt());
	      }
	      return countryList;
	   }
	 
	 @RequestMapping(value = "/addamountprocess", method = RequestMethod.POST)
	  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("add") User user) 
	  {
		 String[]arr=user.getAccno().split("@");
		
		String amount = map.get(arr[1]);
		amount = String.valueOf(Integer.parseInt(amount) + Integer.parseInt(user.getTotalamnt()));
		
		int s = userService.addAmount(arr[1], amount);
		final String mail = arr[2]+"@gmail.com";
		System.out.println("+++++++++++++++++++"+mail);
		final String message = "Your Account has been Credited with INR "+user.getTotalamnt()+"" +"\n"+ "Your Account Balance is INR "+amount+"";
		final String subject = "Amount Credited";

		mailSenderObj.send(new MimeMessagePreparator() {

			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				mimeMsgHelperObj.setTo(mail);
				mimeMsgHelperObj.setFrom("thiruuser");
				mimeMsgHelperObj.setText(message);
				mimeMsgHelperObj.setSubject(subject);
				
			}
		});

		user.setAccno("");user.setFirstname("");user.setTotalamnt("");
		return new ModelAndView("addamount","command",user);
	  }
	  

}
