package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {
	String encoding = null;
	
	@Override
	public void init(FilterConfig config) throws ServletException {
        System.out.println("EncodingFilter init..");
       	encoding = config.getInitParameter("charset");
    }

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding(encoding);   // EUC-KR encoding  
		response.setContentType("text/html; charset=" + encoding);
		System.out.println("EncodingFilter sets character encoding=" + encoding);
        chain.doFilter(request, response);
        System.out.println("EncodingFilter response after doFilter");
	}

	@Override
	public void destroy() {
        System.out.println("EncodingFilter destroy..");
    }
}
