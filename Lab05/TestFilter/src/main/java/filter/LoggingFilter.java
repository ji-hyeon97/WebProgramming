package filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LoggingFilter implements Filter {
	int count = 0;
	PrintWriter out = null;

	@Override
	public void init(FilterConfig config) throws ServletException {
        System.out.println("LoggingFilter init..");
        String filename = config.getInitParameter("logFilename");
        try {
        	out = new PrintWriter(new FileWriter(filename, true), true);
        	print("LoggingFilter init " + new Date(System.currentTimeMillis()));
        } catch (IOException e) {
        	e.printStackTrace();
        }
    }

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("LoggingFilter request before doFilter count=" + (count++));
    	print("LoggingFilter doFilter count=" + count + " " + new Date(System.currentTimeMillis()));
        chain.doFilter(request, response);
        System.out.println("LoggingFilter response after doFilter");
	}

	@Override
	public void destroy() {
        System.out.println("LoggingFilter destroy..");
        print("LoggingFilter destroy " + new Date(System.currentTimeMillis()));
		out.close();
    }

	private void print(String log) {
		if (out != null) out.println(log);
		System.out.println(log);
	}
}
