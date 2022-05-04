package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BMICalculatorManager;
import dto.Activity;
import dto.BMICalculator;
import dto.Gender;

public class EditPersonBMIAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
			String name = request.getParameter("name");
			String ageStr = request.getParameter("age");
			String genderStr = request.getParameter("gender");
			String heightStr = request.getParameter("height");
			String weightStr = request.getParameter("weight");
			String neckStr = request.getParameter("neck");
			String waistStr = request.getParameter("waist");
			String hipStr = request.getParameter("hip");
			String activityStr = request.getParameter("activity");
			
			int age;
			if (ageStr.isEmpty())
				age = 0;
			else
				age = Integer.valueOf(ageStr);
			
			Gender gender;
			if (genderStr.isEmpty())
				gender = null;
			else
				gender = Gender.valueOf(genderStr);
			
			double height;
			if (heightStr.isEmpty())
				height = 0.0;
			else
				height = Double.valueOf(heightStr);

			double weight;
			if (weightStr.isEmpty())
				weight = 0.0;
			else
				weight = Double.valueOf(weightStr);

			double neck;
			if (neckStr.isEmpty())
				neck = 0.0;
			else
				neck = Double.valueOf(neckStr);

			double waist;
			if (waistStr.isEmpty())
				waist = 0.0;
			else
				waist = Double.valueOf(waistStr);
			
			double hip;
			if (hipStr.isEmpty())
				hip = 0.0;
			else
				hip = Double.valueOf(hipStr);
			
			Activity activity;
			if (activityStr.isEmpty())
				activity = null;
			else
				activity = Activity.valueOf(activityStr);

			BMICalculator bmiCalculator = new BMICalculator(name, age, gender, height, weight, neck, waist, hip, activity);
			System.out.println(bmiCalculator);

			BMICalculatorManager dao = BMICalculatorManager.getInstance();
			dao.replace(name, bmiCalculator);
	        System.out.println("Success Edit Person BMICalculator");
	    }
}
