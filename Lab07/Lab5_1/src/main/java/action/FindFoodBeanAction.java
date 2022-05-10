package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.FoodBeanManager;
import dto.FoodBean;

public class FindFoodBeanAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
			String name = request.getParameter("name");
			
			FoodBeanManager service = FoodBeanManager.getInstance();       
			FoodBean foodbean = service.get(name);
	        if (foodbean == null){
		   		System.out.println("FoodBean Not found");	
		   	}
	        request.setAttribute("foodbean", foodbean);
	    }
}