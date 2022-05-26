package kr.ac.dankook;

import org.springframework.stereotype.Component;

@Component("service2")
public class ServiceF implements Service {
	
	public String getInfo() {
		return "ServiceF's Info";
	}
}
