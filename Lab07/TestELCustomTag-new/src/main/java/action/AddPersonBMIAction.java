package action;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonBMICalculatorDAO;
import dao.PersonBMICalculatorImpl;
import dto.PersonBMICalculator;
import dto.Gender;
import jdbc.ConnectionProvider;

public class AddPersonBMIAction implements Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();

			String name = request.getParameter("name");
			String ageStr = request.getParameter("age");
			String genderStr = request.getParameter("gender");
			String heightStr = request.getParameter("height");
			String weightStr = request.getParameter("weight");
			String neckStr = request.getParameter("neck");
			String waistStr = request.getParameter("waist");
			String hipStr = request.getParameter("hip");
			String activity = request.getParameter("activity");
			
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
			
			PersonBMICalculator bmiCalculator = new PersonBMICalculator(name, age, gender, height, weight, neck, waist, hip);
			System.out.println(bmiCalculator);

			PersonBMICalculatorDAO dao = new PersonBMICalculatorImpl(conn);
			dao.insert(bmiCalculator);
	        System.out.println("Success Add PersonBMICalculator");
		} catch (SQLException e) {
			throw new ServiceException("AddPersonBMICalculator error " + e.getMessage(), e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
