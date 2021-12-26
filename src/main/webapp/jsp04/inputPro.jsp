<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%!
String DRIVER="com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/mydb3";
String USER="root";
String PWD="12345";
%>

<%
request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputPro.jsp</title>
</head>
<body>
<%
try{
	Class.forName(DRIVER);
	Connection con=DriverManager.getConnection(URL,USER,PWD);
	
	out.println("addr");
	
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	//
	String tel=request.getParameter("tel");
	String zipcode=request.getParameter("zipcode");
	String addr=request.getParameter("addr");
	String addr2=request.getParameter("addr2");
	
	String sql="insert into test123 values(?,?,?,?,NOW(),?,?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(sql);
	
	pstmt.setString(1,id);
	pstmt.setString(2,pw);
	pstmt.setString(3,name);
	pstmt.setString(4,email);
	//
	pstmt.setString(5,tel);
	pstmt.setString(6,zipcode);
	pstmt.setString(7,addr);
	pstmt.setString(8,addr2);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	out.println("회원가입 성공");
	
}catch(Exception ex){
	out.println("<script>");
	out.println("alert(SQL예외)");
	out.println("history.back()");
	out.println("</script>");
}


%>



</body>
</html>