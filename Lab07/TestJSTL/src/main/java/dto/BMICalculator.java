package dto;

// Class: BMICalculator
public class BMICalculator extends Person {
	
	public BMICalculator() {
		this("", 0, null, 0.0, 0.0);
	}

    public BMICalculator(String name, int age, Gender gender, double height, double weight) {
		super(name, age, gender, height, weight);
    }

    public BMICalculator(String name, int age, Gender gender, double height, double weight, double neck, double waist, double hip, Activity activity) {
    	super(name, age, gender, height, weight, neck, waist, hip, activity);
    }

    public BMICalculator(Person person) {
		super(person);
    }

    // https://bmi-calories.com/bmi-calculator.html
	public BMI getIndex() {
        double bmi = weight / (height * 0.01) / (height * 0.01);
        if (bmi >= 0.0 && bmi < 20.0) 
			return BMI.UNDERWEIGHT;
		else if (bmi >= 20.0 && bmi < 24.0) 
			return BMI.NORMAL;
		else if (bmi >= 24.0 && bmi < 30.0) 
			return BMI.OVERWEIGHT;
		else 
			return BMI.OBESITY;		
    }

	@Override
	public String toString() {
		return "BMICalculator [name=" + name + ", age=" + age + ", gender=" + gender + ", height=" + height
				+ ", weight=" + weight + ", neck=" + neck + ", waist=" + waist + ", hip=" + hip + ", activity="
				+ activity + ", getIndex()=" + getIndex() + "]";
	}

}