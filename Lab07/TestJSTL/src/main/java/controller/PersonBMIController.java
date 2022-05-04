package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.AddPersonBMIAction;
import action.EditPersonBMIAction;
import action.FindPersonBMIAction;
import action.DeletePersonBMIAction;
import action.ListPersonBMIAction;

public class PersonBMIController extends HttpServlet {
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
		if (command.equals("/ListViewPersonBMIAction.do")) { // list view
			action = new ListPersonBMIAction(); // return personList w/ mode
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("listView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/AddPersonBMIAction.do")) { // add
			action = new AddPersonBMIAction(); // add person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewPersonBMIAction.do");
			rd.forward(request, response);	
		} else if (command.equals("/EditViewPersonBMIAction.do")) { // edit view
			action = new FindPersonBMIAction(); // return person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("personForm.jsp?mode=edit");
			rd.forward(request, response);
		} else if (command.equals("/EditPersonBMIAction.do")) { // edit
			action = new EditPersonBMIAction(); // edit person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewPersonBMIAction.do?mode=edit");
			rd.forward(request, response);	
		} else if (command.equals("/DeletePersonBMIAction.do")) { // delete
			action = new DeletePersonBMIAction(); // delete person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewPersonBMIAction.do?mode=delete");
			rd.forward(request, response);	
		} 
	}

}
