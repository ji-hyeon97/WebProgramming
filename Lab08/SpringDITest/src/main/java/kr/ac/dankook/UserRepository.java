package kr.ac.dankook;

import java.util.List;
import org.springframework.stereotype.Component;
//import lombok.Data;

@Component // Spring component
//@Data // lombok @Getter/@Setter/@ToString
public class UserRepository {
	List<User> users;

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "UserRepository [users=" + users + "]";
	}
}