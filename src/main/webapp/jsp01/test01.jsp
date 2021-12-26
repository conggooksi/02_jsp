<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"
    %>
<%!
//선언부, 전역변수, 함수정의 <-- !하면 그렇다, 없으면 그냥 자바구문 쓰는 거
String DRIVER="com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/mydb";
String USER="root";
String PWD="12345";
%>

<%
//자바구문 쓰는 곳
//post요청 했을 시 한글 인코딩 처리
request.setCharacterEncoding("UTF-8");

%>

    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test01.jsp</title>
</head>
<body>
<% 
try{
	Class.forName(DRIVER);//드라이버 로딩
	
	Connection con=DriverManager.getConnection(URL,USER,PWD);//DB 연결
	
	//클라이언트가 보내준 데이터 받기
	String id=request.getParameter("id");//"id" form 안의 name="" id="") name 부분을 받는다//<-요게 여기(서버)로 넘어 온거
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	
	String sql="insert into test122 values(?,?,?)";
	PreparedStatement pstmt=con.prepareStatement(sql);//생성시 인자 들어간다
	//?값 채우기
	pstmt.setString(1,id);
	pstmt.setString(2,pw);
	pstmt.setString(3,name);
	
	pstmt.executeUpdate();//쿼리 수행, insert
	
	pstmt.close();
	con.close();
	out.println("insert 성공");
}catch(Exception ex){
	System.out.println("insert 예외:"+ex);
	
	out.println("<script>");
	out.println("alert('SQLException');");
	out.println("history.back();");
	out.println("</script>");
}
%>
</body>
</html>