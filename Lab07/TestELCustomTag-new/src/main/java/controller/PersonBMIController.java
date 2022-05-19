package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.AddPersonBMIAction;
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
			System.out.println("ListViewPersonBMIAction");
			action = new ListPersonBMIAction(); // return personBMIList
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("listView.jsp");
			rd.forward(request, response);
		} else if (command.equals("/AddPersonBMIAction.do")) { // add
			action = new AddPersonBMIAction(); // add person
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewPersonBMIAction.do");
			rd.forward(request, response);	
		} 
	}
}
