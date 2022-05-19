<!-- footer.tag -->
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ attribute name="course" required="true"%><!-- required 속성, 필수 attribute 명시 --> 
<%@ attribute name="year" type="java.lang.Integer" %><!-- type 속성, 기본 값은 String --> 
<%@ tag import="java.util.Date"%>


<div class="container">
	<div class="navbar-header">
		<h4 class="btn btn-secondary">Copyright ${course} ${year} <%= new Date() %></h4>
	</div>
</div>