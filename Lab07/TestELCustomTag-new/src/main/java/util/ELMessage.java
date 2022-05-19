package util;

import java.util.HashMap;
import java.util.Map;

public class ELMessage {
	private Map<String, Integer> map = new HashMap<>();

	public ELMessage() {
		put("Park");
		put("is");
	}
	
	public int getMessageLength(String message) {
		return this.map.get(message);
	}

	public void put(String message) {
		map.put(message, message.length());
	}

	public Map<String, Integer> getMap() {
		return map;
	}
}
