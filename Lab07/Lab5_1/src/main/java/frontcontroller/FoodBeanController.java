package frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.AddFoodBeanAction;
import action.DeleteFoodBeanAction;
import action.EditFoodBeanAction;
import action.ListFoodBeanAction;
import action.FindFoodBeanAction;

public class FoodBeanController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		Action action = null;
		if (command.equals("/ListViewFoodBeanAction.do")) { // list view
			action = new ListFoodBeanAction(); // return personList w/ mode
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("listView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/DetailViewFoodBeanAction.do")) { // detail view
			action = new FindFoodBeanAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("detailView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/AddViewFoodBeanAction.do")) { // add view
			RequestDispatcher rd = request.getRequestDispatcher("addView.jsp");
			//RequestDispatcher rd = request.getRequestDispatcher("updateView.jsp?mode=add");
			rd.forward(request, response);
		} else if (command.equals("/EditViewFoodBeanAction.do")) { // edit view
			action = new FindFoodBeanAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("editView.jsp");
			//RequestDispatcher rd = request.getRequestDispatcher("updateView.jsp?mode=edit");
			rd.forward(request, response);
		} else if (command.equals("/AddFoodBeanAction.do")) { // add
			action = new AddFoodBeanAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewFoodBeanAction.do");
			rd.forward(request, response);	
		} else if (command.equals("/EditPersonAction.do")) { // edit
			action = new EditFoodBeanAction(); 
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewFoodBeanAction.do?mode=edit");
			rd.forward(request, response);
		}
		else if (command.equals("/DeleteFoodBeanAction.do")) { // delete
			action = new DeleteFoodBeanAction();
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("deleteView.jsp");
			rd.forward(request, response);
		} 
	}

}