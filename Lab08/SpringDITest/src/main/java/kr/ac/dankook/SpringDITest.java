package kr.ac.dankook;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringDITest {

	public static void main(String[] args) {
		
		System.out.println("\n1. Dependency Injection using XML (config.xml) (userRepository <- user1, user2, user3)");
		// 1. Dependency Injection using XML 
		ApplicationContext appContext = new ClassPathXmlApplicationContext("classpath:config.xml");	     
		User user1 = (User) appContext.getBean("user1");
		System.out.println(user1);
		User user2 = (User) appContext.getBean("user2");
		System.out.println(user2);
		User user3 = (User) appContext.getBean("user3");
		System.out.println(user3);
		UserRepository users = (UserRepository) appContext.getBean("userRepository");
		System.out.println(users);
		
		System.out.println("\n2. Dependency Injection using Java Config (AppConfig.java import UserConfig.java) (userRepository <- user1, user2, user3)");
		appContext = new AnnotationConfigApplicationContext(AppConfig.class);     
		UserRepository users3 = (UserRepository) appContext.getBean("userRepository3");
		System.out.println(users3);
		
		System.out.println("\n3. Dependency Injection using Annotation (userTest <- user)");
		// Dependency Injection using Annotation 
		appContext = new AnnotationConfigApplicationContext();
		((AnnotationConfigApplicationContext)appContext).scan("kr.ac.dankook");
		((AnnotationConfigApplicationContext)appContext).refresh();
		UserTest userTest = (UserTest) appContext.getBean("userTest");
		userTest.set("Cho", 123);
		userTest.test();
		userTest.set("Choi", 1234);
		userTest.test();

		System.out.println("\n\n\n");
		System.out.println("\n1. Dependency Injection using XML (applicationContext.xml import config.xml) (client1 <- service1)");
		// Dependency Injection using XML (client1 <- service1)
		ApplicationContext appContext2 = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");	     
		Client client1 = (Client) appContext2.getBean("client1");
		client1.doSomething();
		user1 = (User) appContext2.getBean("user1");
		System.out.println(user1);
		
	    System.out.println("\n2. Dependency Injection using Java Config (AppConfig.java) (client3 <- service3)");
		// Dependency Injection using Java Config
	    appContext2 = new AnnotationConfigApplicationContext(AppConfig.class);
	    Client client3 = (Client) appContext2.getBean("client3");
        client3.doSomething();
        
	    System.out.println("\n2. Dependency Injection using Java Config (AppConfig.java) (client4 <- service3)");
        Client client4 = (Client) appContext2.getBean("client4");
        client4.doSomething();
        System.out.println();

        Service service = (Service) appContext2.getBean("service3");
        System.out.println(service.getInfo());
        System.out.println();

		User user4 = (User) appContext2.getBean("user4");
		System.out.println(user4);
        System.out.println();

		System.out.println("\n3. Dependency Injection using Annotation (client2 <- service2)");
		// Dependency Injection using Annotation (client2 <- service2)
		appContext2 = new AnnotationConfigApplicationContext();
		((AnnotationConfigApplicationContext)appContext2).scan("kr.ac.dankook");
		((AnnotationConfigApplicationContext)appContext2).refresh();
		Client client2 = (Client) appContext2.getBean("client2");
		client2.doSomething();	    
	}
}