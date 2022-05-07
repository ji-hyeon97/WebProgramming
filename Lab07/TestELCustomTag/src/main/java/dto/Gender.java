package dto;

//Enum: BMI
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
	
	public static Gender nameOf(String name) {
		switch (name) { // switch
		case "1":
		case "FEMALE":
		case "female":
		case "f":
			return FEMALE;
		case "2":
		case "MALE":
		case "male":
		case "m":
			return MALE;
		default:
			return null;
		}
	}
	
}
