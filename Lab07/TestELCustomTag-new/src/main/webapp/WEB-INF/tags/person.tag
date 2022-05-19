<!-- person.tag -->
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ attribute name="name" required="true"%><!-- required 속성, 필수 attribute 명시 --> 
<%@ attribute name="age" type="java.lang.Integer" %><!-- type 속성, 기본 값은 String --> 
<%@ attribute name="gender" type="dto.Gender" %><!-- type 속성, 기본 값은 String --> 
<%@ attribute name="height" type="java.lang.Double" %><!-- type 속성, 기본 값은 String --> 
<%@ attribute name="weight" type="java.lang.Double" %><!-- type 속성, 기본 값은 String --> 
<%@ attribute name="neck" type="java.lang.Double" %><!-- type 속성, 기본 값은 String --> 
<%@ attribute name="waist" type="java.lang.Double" %><!-- type 속성, 기본 값은 String --> 
<%@ attribute name="hip" type="java.lang.Double" %><!-- type 속성, 기본 값은 String --> 

<div class="container">
Person: ${name} ${age} ${gender} ${height} ${weight} ${neck} ${waist} ${hip}
</div>