<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file ="/WEB-INF/view/main_top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value="/login/"/>" method="post">
	<table>
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="id"/></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="text" name="password"/></td>
		</tr>
	</table>
	<input type="submit" value="로그인">
	<a href="<c:url value="/register/step1"/>"> 회원가입 </a><a href="#"> 아이디찾기 </a><a href="#"> 비밀번호찾기 </a>
</form>

</body>
</html>