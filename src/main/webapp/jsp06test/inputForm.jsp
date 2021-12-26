<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputForm.jsp</title>

<style type="text/css">
	h2{text-align:center;}
	table{margin:auto;}
	tr{line-height:30px;}
</style>

<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function check(){
		if($('#id').val()==''){
			alert("ID를 입력 하세요");
			$('#id').focus();
			return false;
		}
		
		if($('#pw').val()==''){
			alert("암호를 입력 하세요");
			$('#pw').focus();
			return false;
		}
		
		if($('#name').val()==''){
			alert("이름을 입력 하세요");
			$('#name').focus();
			return false;
		}
		return true;
	}//check()-end

</script>

</head>
<body>
<form name="myForm" method="post" action="inputPro.jsp" onSubmit="return check()">
<h2>회원가입</h2>
	<table border="1">
		<tr>
			<td>사용자ID</td>
			<td>
				<input type="text" name="id" id="id" placeholder="ID입력">
			</td>
		</tr>
		
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="pw" id="pw" placeholder="암호입력">
			</td>
		</tr>
		
		<tr>
			<td>사용자이름</td>
			<td>
				<input type="text" name="name" id="name" placeholder="이름 입력">
			</td>
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