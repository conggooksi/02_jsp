<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gugudan.jsp</title>
</head>
<body>
<h2>구구단, 자바문법, JSP문법, HTML문법</h2>
<%-- 2중 for 사용--%>
	<table border="1">
				
		<%
			for(int i=1;i<=9;i++){
				
		%>
		<tr>
			<%
				for(int j=2;j<=9;j++){
			%>
			
			<td><%=j+"*"+i+"="+(j*i)%></td>
			
			<%
				}
			%>
		</tr>
		<%
			}
		%>
		
	</table>

</body>
</html>