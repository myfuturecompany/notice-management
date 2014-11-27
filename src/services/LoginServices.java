package services;

import impl.FindImpl;
import impl.SaveImpl;
import beans.Student;


public class LoginServices {
	
	public String login(String userName, String password, Boolean isAdminLogin){
		
		
		FindImpl impl = new FindImpl();
		
		Object userType = impl.findUserLogin(userName, password, isAdminLogin);
		
		if(userType != null)
			return userType.toString();
		
		return null;
	}
	
	
	
	public String registration(Student student){		
		SaveImpl impl = new SaveImpl();
		impl.save(student);
		return null;
		}
		
	
	
}
