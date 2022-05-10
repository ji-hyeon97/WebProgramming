package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyBeanManager;
import dto.BuyBean;

public class AddBuyBeanAction implements Action {
	   public void execute(HttpServletRequest request, HttpServletResponse response) {
		   
		   int num = Integer.parseInt(request.getParameter("num"));
		   String prod_name = request.getParameter("prod_name");
		   String group_name = request.getParameter("group_name");
		   int price = Integer.parseInt(request.getParameter("price"));
		   int amount = Integer.parseInt(request.getParameter("amount"));
		   
		   BuyBean buybean = new BuyBean();
		   buybean.setNum(num);
		   buybean.setProd_name(prod_name);
		   buybean.setGroup_name(group_name);
		   buybean.setPrice(price);
		   buybean.setAmount(amount);

		   BuyBeanManager service = BuyBeanManager.getInstance();
			service.add(buybean);
	        System.out.println("Sucess Add Person");
	    }
}
