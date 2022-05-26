package kr.ac.dankook;

import java.util.Arrays;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource("classpath:config.xml") // user1, user2, user3, userRepository
public class UserConfig {
	@Bean("user4")
	public User user4() {
		return new User("Kim", 10);
	}
	@Bean("name = user5")
	public User user() {
		return new User("Lee", 5);
	}
	@Bean // userRepository3 <- user4, user5
	public UserRepository userRepository3() {
		UserRepository users = new UserRepository();
		users.setUsers(Arrays.asList(user4(), user()));
		return users;
	}
}
