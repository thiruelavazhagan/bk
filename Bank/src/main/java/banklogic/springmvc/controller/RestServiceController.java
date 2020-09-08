package banklogic.springmvc.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import banklogic.springmvc.model.Login;
import banklogic.springmvc.model.Products;
import banklogic.springmvc.service.UserService;

@RestController
public class RestServiceController {
	@Autowired
	public UserService userService;
	@Autowired
	private JavaMailSender mailSenderObj;
	
	@RequestMapping(value = "/products/{id}/{amount}", method = RequestMethod.POST)
	public String createProduct(@PathVariable("id") String id, @PathVariable("amount") String amount ) {
//		String id = id1 + ".com";
		System.out.println("***********"+id+"****"+amount);
		String result = userService.checkEmail(id);
		if (result.equalsIgnoreCase("0")) {
			return result;
		} else {
			try {
				Random r = new Random();
	
				char[] map1 = new char[68];
				int i = 0;
				for (char c = 'A'; c <= 'Z'; c++) {
					map1[i++] = c;
				}
				for (char c = 'a'; c <= 'z'; c++) {
					map1[i++] = c;
				}
				for (char c = '0'; c <= '9'; c++) {
					map1[i++] = c;
				}
				map1[i++] = '+';
				map1[i++] = '/';
				map1[i++] = '$';
				map1[i++] = '#';
				map1[i++] = '&';
				map1[i++] = '*';

				String p1 = String.valueOf(map1[r.nextInt(67)]);
				String p2 = String.valueOf(map1[r.nextInt(67)]);
				String p3 = String.valueOf(map1[r.nextInt(67)]);
				String p4 = String.valueOf(map1[r.nextInt(67)]);
				String p5 = String.valueOf(map1[r.nextInt(67)]);
				String p6 = String.valueOf(map1[r.nextInt(67)]);
				String p7 = String.valueOf(map1[r.nextInt(67)]);
				String p8 = String.valueOf(map1[r.nextInt(67)]);
				String otp = p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8;

				int sendOtp = userService.updateOtp(otp, id, amount);

				final String mail = id;
				final String message = "Your One Time Password is :" + otp + "";
				final String subject = "One Time Password";

				mailSenderObj.send(new MimeMessagePreparator() {

					public void prepare(MimeMessage mimeMessage) throws Exception {

						MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
						mimeMsgHelperObj.setTo(mail);
						mimeMsgHelperObj.setFrom("thiruuser");
						mimeMsgHelperObj.setText(message);
						mimeMsgHelperObj.setSubject(subject);

					}
				});

			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}

	}
//	 @RequestMapping(value = "/product", method = RequestMethod.POST)
//	   public @ResponseBody Products product (@RequestBody Products product) {
//		 System.out.println("*************"+product.getRemail()+""+product.getRamount());
//	      return product;
//	   }
//	 @RequestMapping(value = "/sp", method = RequestMethod.POST)
//	   public ResponseEntity<Object> createProduct(@RequestBody Products product) {
//	      
//	      return new ResponseEntity<("Product is created successfully", HttpStatus.CREATED);
//	   }

}