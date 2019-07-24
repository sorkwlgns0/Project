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
<form action="<c:url value="/login/foundPW"/>" method="post">
	<table>
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="id"/></td>
		</tr>
		<tr>
			<td>생년월일(8자리 ex(19880301)) : </td>
			<td><input type="text" name="birth"/></td>
		</tr>
	</table>
	<input type="submit" value="비밀번호 찾기">
	<a href="<%=request.getContextPath()%>/main">메인으로 </a><a href="<%=request.getContextPath()%>/login/searchID"> 아이디 찾기 </a>
</form>

</body>
</html>