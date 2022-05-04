package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BMICalculatorManager;
import dto.BMICalculator;

public class DeletePersonBMIAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
			String name = request.getParameter("name");
			
			BMICalculatorManager dao = BMICalculatorManager.getInstance();       
	        BMICalculator bmiCalculator = dao.find(name);
	    	if (bmiCalculator != null) {
	    		dao.remove(bmiCalculator);
	    	} 
	    	else {
	    		System.out.println("Person BMICalculator Not found");	
	    	}   
	        System.out.println("Sucess Delete Person BMICalculator");
	    }

}
