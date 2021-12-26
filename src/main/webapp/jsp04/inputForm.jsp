<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inputForm.jsp</title>
<style type="text/css">
	h2{text-align : center;}
	table{margin : auto;}
	tr{line-height : 30px;}
</style>

<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>

<%--kakao API --%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
<script>
function openDaumPostcode(){
	 
	new daum.Postcode({
		oncomplete:function(data){
			document.getElementById('zipcode').value=data.zonecode;
			document.getElementById('addr').value=data.address;
 		}
		
	}).open();
}//openDaumPostcode()---
</script>

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
		
		if($('#email').val()==''){
			alert("이메일을 입력 하세요");
			$('#email').focus();
			return false;
		}
		
		if($('#tel').val()==''){
			alert("전화를 입력 하세요");
			$('#tel').focus();
			return false;
		}
		
		if($('#addr').val()==''){
			alert("주소를 입력 하세요");
			$('#addr').focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<h2>♠회원가입♠</h2>
<form name="myForm" method="post" action="inputPro.jsp" onSubmit="return check()">
	<table border="1">
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" id="id" placeholder="id를 입력 하세요" size="20"></td>
		</tr>
		
		<tr>
			<td>암호</td>
			<td><input type="password" name="pw" id="pw" placeholder="암호를 입력 하세요" size="20"></td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name" placeholder="이름을 입력 하세요" size="20"></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="text" name="email" id="email" placeholder="이메일을 입력 하세요" size="40"></td>
		</tr>
		
		<tr>
			<td>휴대폰</td>
			<td><input type="text" name="tel" id="tel" placeholder="휴대전화 번호를 입력 하세요" size="40"></td>
		</tr>
		
		<tr>
			<td>우편번호</td>
			<td>
				<input type="text" name="zipcode" id="zipcode" size="7" readonly>
				<input type="button" value="주소찾기" onClick="openDaumPostcode()">
			</td>
		</tr>
		
		<tr>
			<td>주소</td>
			<td><input type="text" name="addr" id="addr" placeholder="주소를 입력 하세요" size="40" readonly>
			<br>
			상세주소 : <input type="text" name="addr2" id="addr2" size="16">
			
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