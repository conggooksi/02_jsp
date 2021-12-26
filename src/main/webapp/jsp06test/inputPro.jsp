<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputPro.jsp</title>
<%!
String DRIVER="com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/testDB";
String USER="root";
String PWD="12345";
%>

<%
request.setCharacterEncoding("UTF-8");
%>

</head>
<body>
<%
try{
	Class.forName(DRIVER);
	Connection con=DriverManager.getConnection(URL,USER,PWD);
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	
	String sql="insert into member values(?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(sql);
	
	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	out.println("회원가입 성공");
	
}catch(Exception ex){
	out.println("<script>");
	out.println("alert('SQL예외')");
	out.println("history.back()");
	out.println("</script>");
}

%>

</body>
</html>