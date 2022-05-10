package action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FoodBeanManager;
import dto.FoodBean;

public class ListFoodBeanAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String mode = request.getParameter("mode");

		FoodBeanManager service = FoodBeanManager.getInstance();       
        List<FoodBean> pList = service.getList();      		
        request.setAttribute("personList", pList);		
        request.setAttribute("mode", mode);

        System.out.println("ListPersonAction mode=" + mode);
        System.out.println("pList.size()=" + pList.size());
	}
}