package action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BMICalculatorManager;
import dto.BMICalculator;

public class ListPersonBMIAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String mode = request.getParameter("mode");

		BMICalculatorManager dao = BMICalculatorManager.getInstance();       
        List<BMICalculator> bmiList = dao.getList();      		
        request.setAttribute("bmiList", bmiList);		
        request.setAttribute("mode", mode);		

        System.out.println("ListPersonBMIAction mode=" + mode);
        System.out.println("bmiList.size()=" + bmiList.size());
	}
}
