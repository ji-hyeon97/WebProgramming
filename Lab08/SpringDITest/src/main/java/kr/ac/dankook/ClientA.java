package kr.ac.dankook;

public class ClientA implements Client {
	Service service;
	
	public ClientA(Service service) {
		this.service = service;
	}

	
	public Service getService() {
		return service;
	}


	public void setService(Service service) {
		this.service = service;
	}

	public void doSomething() {
		System.out.println("ClientA: " + service.getInfo());		
	}
}

