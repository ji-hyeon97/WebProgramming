package kr.ac.dankook;

import org.springframework.stereotype.Component;
//import lombok.Data;

@Component // Spring component
//@Data // lombok @Getter/@Setter/@ToString
public class User {
	private String name;
	private int password;

	public User() {
		this("", 0);
	}
	
	public User(String name, int password) {
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPassword() {
		return password;
	}

	public void setPassword(int password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", password=" + password + "]";
	}
}
