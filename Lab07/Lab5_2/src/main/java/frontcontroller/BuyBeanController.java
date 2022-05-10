package frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.AddBuyBeanAction;
import action.DeleteBuyBeanAction;
import action.EditBuyBeanAction;
import action.ListBuyBeanAction;
import action.FindBuyBeanAction;

public class BuyBeanController extends HttpServlet {
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
		if (command.equals("/ListViewBuyBeanAction.do")) { // list view
			action = new ListBuyBeanAction(); // return personList w/ mode
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("listView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/DetailViewBuyBeanAction.do")) { // detail view
			action = new FindBuyBeanAction(); // return person
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("detailView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/AddViewBuyBeanAction.do")) { // add view
			RequestDispatcher rd = request.getRequestDispatcher("addView.jsp");
			//RequestDispatcher rd = request.getRequestDispatcher("updateView.jsp?mode=add");
			rd.forward(request, response);
		} else if (command.equals("/EditViewBuyBeanAction.do")) { // edit view
			action = new FindBuyBeanAction(); // return person
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("editView.jsp");
			//RequestDispatcher rd = request.getRequestDispatcher("updateView.jsp?mode=edit");
			rd.forward(request, response);
		} else if (command.equals("/AddBuyBeanAction.do")) { // add
			action = new AddBuyBeanAction(); // add person
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewBuyBeanAction.do");
			rd.forward(request, response);	
		} else if (command.equals("/EditBuyBeanAction.do")) { // edit
			action = new EditBuyBeanAction(); // edit person
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewBuyBeanAction.do?mode=edit");
			rd.forward(request, response);
		}
		else if (command.equals("/DeleteBuyBeanAction.do")) { // delete
			action = new DeleteBuyBeanAction(); // delete person
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("deleteView.jsp");
			rd.forward(request, response);
		} 
	}

}
