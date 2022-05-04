package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BMICalculatorManager;
import dto.BMICalculator;

public class FindPersonBMIAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		
		BMICalculatorManager dao = BMICalculatorManager.getInstance();
		BMICalculator bmiCalculator = dao.find(name);
        if (bmiCalculator == null){
	   		System.out.println("Person BMICalculator Not found");	
	   	}
        request.setAttribute("person", bmiCalculator);

        System.out.println("Find Person BMICalculator Action");	
	}

}
