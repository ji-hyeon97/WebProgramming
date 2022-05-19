package action;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PersonBMICalculatorDAO;
import dao.PersonBMICalculatorImpl;
import dto.PersonBMICalculator;
import dto.Person;
import jdbc.ConnectionProvider;

public class ListPersonBMIAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ListPersonBMIAction");

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();

			PersonBMICalculatorDAO dao = new PersonBMICalculatorImpl(conn);       
			List<PersonBMICalculator> list = dao.selectList();
			request.setAttribute("personBMIList", list);		

			System.out.println("ListPersonBMIAction");
			System.out.println("personBMIList.size()=" + list.size());
		} catch (SQLException e) {
			throw new ServiceException("ListPersonBMICalculator error " + e.getMessage(), e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
