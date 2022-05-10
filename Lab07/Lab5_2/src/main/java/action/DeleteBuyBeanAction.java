package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyBeanManager;
import dto.BuyBean;

public class DeleteBuyBeanAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
			String prod_name = request.getParameter("prod_name");
			
			BuyBeanManager service = BuyBeanManager.getInstance();       
			BuyBean buybean = service.get(prod_name);
	    	if (buybean != null) {
	    		service.remove(buybean);
	    	} 
	    	else {
	    		System.out.println("buybean Not found");	
	    	}   	
	        System.out.println("Sucess Delete buybean");
	    }
}