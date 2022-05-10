package action;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyBeanManager;
import dto.BuyBean;

public class ListBuyBeanAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String mode = request.getParameter("mode");

		BuyBeanManager service = BuyBeanManager.getInstance();       
        List<BuyBean> pList = service.getList();      		
        request.setAttribute("BuyBeanList", pList);		
        request.setAttribute("mode", mode);

        System.out.println("ListPersonAction mode=" + mode);
        System.out.println("pList.size()=" + pList.size());
	}
}