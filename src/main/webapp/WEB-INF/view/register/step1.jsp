<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ include file ="/WEB-INF/view/main_top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script> 
var idCheck = 0;
$(function() {
    $("#idCheck").click(function() {
 var query = {id : $("#id").val()};
 
 $.ajax({
  url : "/idCheck",
  type : "post",
  data : query,
  success : function(data) {
  
   if(data == 1) {
    $(".result .msg").text("사용 불가");
    $(".result .msg").attr("style", "color:#f00");    
   } else {
    $(".result .msg").text("사용 가능");
    $(".result .msg").attr("style", "color:#00f");
   }
  }
 });  // ajax 끝
});
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
	    <td class="tg-0lax"><input type="text" id="id" name="id"/><button type="button" class="idCheck">중복확인</button></td>
	    <td class="result">
	    	<span class="msg">아이디를 확인해주십시오.</span>
	    </td>
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
	    <th class="tg-0lax"><input type="text" name="mobile"/></th>
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