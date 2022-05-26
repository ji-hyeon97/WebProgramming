package kr.ac.dankook;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(UserConfig.class)
public class AppConfig {
	@Bean("client3") // client3 <- service3
	public Client getClient3(Service service3) {
		return new ClientC(service3);
	}
	@Bean("client4") // client4 <- service3
	public Client getClient4(Service service3) {
		return new ClientD(service3);
	}
	@Bean("service3") // service3
	public Service getService3() {
		return new ServiceG();
	}
}
