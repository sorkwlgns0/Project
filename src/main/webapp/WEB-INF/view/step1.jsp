<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ include file ="/WEB-INF/view/main_top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script>
function idCheck(id){
	if(id == ""){
		alert("아이디를 입력해주세요.");
		document.step1.id.focus();
	}
	else {
		var popWidth = 300;
		var popHeight = 200;
		var winHeight = document.body.clientHeight;
		var winWidth= document.body.clientWidth;
		var winX = window.screenLeft;
		var winY = window.screenTop;
		var popX = winX + (winWidth + popWidth) /2;
		var popY = winY + (winHeight + popHeight) /2;
		url = "idCheck.jsp?id="+id;
		window.open(url, "post", "left="+popX+",top="+popY+",width="+popWidth+", height="+popHeight);
	}
}
</script>
<meta charset="UTF-8">
<title><spring:message code="member.register"/></title>
<style type="text/css">
	.img_wrap{
	width:200px;
	margin-top:30px;
	}
	.img_wrap img {
	max-width:200px;
	}
</style>
<style type="text/css"> .tg {border-collapse:collapse;border-spacing:0;} .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;} .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;} .tg .tg-0lax{text-align:left;vertical-align:top} .tg .tg-xldj{border-color:inherit;text-align:left} </style>
</head>
<body>
	<h2><spring:message code="term"/></h2>
	<p>약관 내용</p>
	<form action="<c:url value="/register/step2"/>" method="post" name="step1">
	<label><input type="checkbox" name="agree" value="true">
	<spring:message code="term.agree"/><br>
	<textarea rows="10" cols="100"><spring:message code="term1.1"/></textarea>
	<textarea rows="10" cols="100"><spring:message code="term1.2"/></textarea>
	</label>
	<table class="tg">
		<tr>
		<th colspan="3"><div style="text-align:right"><span style = "color : red;">*</span>표시는 필수 입니다</div></th>
		</tr>
	  <tr>
	    <td class="tg-0lax"><span style = "color : red;">*</span>아이디 : </td>
	    <td class="tg-0lax"><input type="text" name="id" id="id"><input type="button" value="중복확인" onClick="idCheck(this.form.id.value)"/></td>
	  </tr>
	  <tr>
	    <td class="tg-0lax"><span style = "color : red;">*</span>비밀번호 : </td>
	    <td class="tg-0lax"><input type="text" name="password"></td>
	  </tr>
	  <tr>
	    <td class="tg-0lax"><span style = "color : red;">*</span>비밀번호확인 : </td>
	    <td class="tg-0lax"><input type="text" name="passwordConfirm"></td>
	  </tr>
	  <tr>
	    <td class="tg-0lax"><span style = "color : red;">*</span>이름</td>
	    <td class="tg-0lax"><input type="text" name="name"></td>
	  </tr>
	  <tr>
	    <td class="tg-xldj"><span style = "color : red;">*</span>주소</td>
	    <td class="tg-0lax"><input type="text" name="address"></td>
	  </tr>
	  <tr>
	    <th class="tg-0lax"><span style = "color : red;">*</span>휴대폰전화</th>
	    <th class="tg-0lax"><input type="text" name="mobile_num"/></th>
	   </tr>
	 <tr>
	 	<th class="tg-0lax"><span style = "color : red;">*</span>이메일</th>
	    <th class="tg-0lax"><input type="text" name="email"/></th>
	  </tr>
	  <tr>
	 	<th class="tg-0lax"><span style = "color : red;">*</span>생년월일</th>
	    <th class="tg-0lax"><input type="text" name="birth"/></th>
	  </tr>
	</table>
	<input type="submit" value="회원가입"> <button><a href="<c:url value="/main"/>">메인페이지로</a></button>
	</form>
</body>
</html>