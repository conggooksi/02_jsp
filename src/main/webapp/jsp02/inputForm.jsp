<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--inputForm.jsp --%>
<%--jsp 주석 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputForm.jsp</title>

	<style type="text/css">
		h2{text-align : center;}
		table{margin : auto;}
	</style>
	
	<script src="//code.jquery.com/jquery-3.6.0.min.js"></script> <%--jQuery 사용 하겠다는 문구 --%>
	
	<script type="text/javascript">
		function check(){
			if($('#id').val()==''){
				alert("ID를 입력 하세요");
				$('#id').focus();
				return false;
			}
			
			if($('#pw').val()==''){
				alert("암호 입력 하세요");
				$('#pw').focus();
				return false;
			}
			
			if($('#name').val()==''){
				alert("이름을 입력 하세요");
				$('#name').focus();
				return false;
			}
			
			if($('#email').val()==''){
				alert("이메일을 입력 하세요");
				$('#email').focus();
				return false;
			}
			return true;
		}//check()-end
	</script>
	
</head>
<body>
	<h2>회원가입</h2>
	<form name="myForm" method="post" action="inputPro.jsp" onSubmit="return check()">
		<table border="1">
			<tr>
				<td>ID</td>
				<td><input type="text" name="id" id="id" placeholder="id입력" size="20"></td>
			</tr>
			
			<tr>
				<td>암호</td>
				<td><input type="password" name="pw" id="pw" placeholder="암호입력" size="20"></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" placeholder="이름입력" size="30"></td>
			</tr>
			
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="email" placeholder="이메일 입력" size="40"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="회원가입">
				<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	
	</form>

</body>
</html>