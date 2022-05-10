package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.BuyBeanManager;
import dto.BuyBean;

public class FindBuyBeanAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
			String prod_name = request.getParameter("prod_name");
			
			BuyBeanManager service = BuyBeanManager.getInstance();       
			BuyBean buybean = service.get(prod_name);
	        if (buybean == null){
		   		System.out.println("buybean Not found");	
		   	}
	        request.setAttribute("buybean", buybean);
	        //List<Person> pList = service.getList();
	        //request.setAttribute("personList", pList);		

	        System.out.println("FindbuybeanAction");	
	    }
}
