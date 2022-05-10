package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodBeanManager;
import dto.FoodBean;

public class DeleteFoodBeanAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
			String sample_id = request.getParameter("sample_id");
			
			FoodBeanManager service = FoodBeanManager.getInstance();       
	        FoodBean person = service.get(sample_id);
	    	if (person != null) {
	    		service.remove(person);
	    	} 
	    	else {
	    		System.out.println("Person Not found");	
	    	}   	
	        System.out.println("Sucess Delete Person");
	    }
}
