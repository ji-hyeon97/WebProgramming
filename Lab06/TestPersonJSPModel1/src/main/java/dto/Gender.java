package dto;

public enum Gender {
	FEMALE(1), MALE(2);
	
	private final int type;
	Gender(int type) {
		this.type = type;
	}
	
	public int getType() {
		return type;
	}

	public static Gender valueOf(int value) {
		switch (value) { // switch
		case 1:
			return FEMALE;
		case 2:
			return MALE;
		}
		return null;
	}
	
	// get String[] names 
	public static String[] names() {
		String[] names = new String[Gender.values().length];
		for (Gender g : Gender.values()) 
			names[g.ordinal()] = g.toString();
		return names;
	}
}
