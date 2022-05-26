package kr.ac.dankook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("userTest")
public class UserTest {
	@Autowired
	private User user; // UserTest <- user
	
	public void set(String name, int password) {
		user.setName(name);
		user.setPassword(password);
	}
	
	public void test() {
		System.out.println(user);
	}
}