package kr.ac.dankook;

public class ClientD implements Client {
	Service service;
	
	public ClientD(Service service) {
		this.service = service;
	}

	public void doSomething() {
		System.out.println("ClientD: " + service.getInfo() + " info" + service.getInfo() + " info" + service.getInfo());		
	}

}
