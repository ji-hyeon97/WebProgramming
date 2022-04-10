package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenticationFilter implements Filter {
	String adminID = null;
	String adminPW = null;
	PrintWriter out = null;
	
	@Override
	public void init(FilterConfig config) throws ServletException {
        System.out.println("AuthenticationFilter init..");
        adminID = config.getInitParameter("adminID");
        adminPW = config.getInitParameter("adminPW");
        System.out.println("adminID=" + adminID + " adminPW=" + adminPW);
    }

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("AuthenticationFilter request before doFilter");
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		if (userID == null || userID.equals("")) {
			System.out.println("userID is null");
			out = response.getWriter();
	        out.println("userID is null!");
	        out.println("AuthenticationFilter checks Authentication!");
	        return;
	    }
		else if (userPW.length() < 5) {
			System.out.println("userPW.length() is less than 5");
	        out = response.getWriter();
	        out.println("Sorry, that password was incorrect.");
	        out.println("The password length must be greater than 5!");
	        return;
		}
		else if (userID.contentEquals(adminID) && userPW.equals(adminPW)) {
			System.out.println("user is admin!");
			out = response.getWriter();
	        out.println("user is admin!");
	        return;
	    }
        chain.doFilter(request, response);
        System.out.println("AuthenticationFilter response after doFilter");
	}
	
	@Override
	public void destroy() {
        System.out.println("AuthenticationFilter destroy..");
    }
}
