package kr.ac.dankook;

public class ClientC implements Client {
	Service service;

	public ClientC(Service service) {
		this.service = service;
	}

	public void doSomething() {
		System.out.println("ClientC: " + service.getInfo() + " info" + service.getInfo());		
	}

}