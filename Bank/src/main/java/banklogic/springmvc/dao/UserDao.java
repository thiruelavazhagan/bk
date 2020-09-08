package banklogic.springmvc.dao;

import java.util.List;

import banklogic.springmvc.model.CountMap;
import banklogic.springmvc.model.Login;
import banklogic.springmvc.model.User;

public interface UserDao {

  String register(User user);

  User validateUser(Login login);

  List<User> list();

  int addAmount(String accno,String amount);
  
  List<CountMap> clist();
  
  String checkEmail(String id);
  
  int updateOtp(String otp, String email, String amount);
  
  String userPay(User user);
  
}
