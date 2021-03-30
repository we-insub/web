<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<%
		request.setCharacterEncoding("utf-8");
	%>
    <head>
        <meta charset="utf-8">
    </head>
    <body>
        <h1>전달받은 데이터</h1>
        <ul>
            <li>이 름: <%= request.getParameter("name") %></li>
            <li>주민번호: <%= request.getParameter("KN1") %> - : <%= request.getParameter("KN2") %>****** </li>
            <li>통신사: <%= request.getParameter("ck") %></li>
            <li>전화번호: <%= request.getParameter("phone1") %> - <%= request.getParameter("phone2") %>-<%= request.getParameter("phone3") %></li>
            <li>Email: <%= request.getParameter("UserEmail") %> @ <%= request.getParameter("email_2") %>.com</li>
            
            
        </ul>
    </body>
</html>