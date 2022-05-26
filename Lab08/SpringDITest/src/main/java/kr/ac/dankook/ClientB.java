package kr.ac.dankook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("client2")
public class ClientB implements Client {

	@Autowired
	private Service service2; // client2 <- service2
	

	public void doSomething() {
		System.out.println("ClientB: " + service2.getInfo());	
	}

}
