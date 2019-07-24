<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form action="<c:url value="/login/passwordChanged"/>" method="post">
		<table>
		<tr>
			<td>새비밀번호 : </td>
			<td><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td>새비밀번호확인 : </td>
			<td><input type="password" name="passwordConfirm"/></td>
		</tr>
	</table> 
	<input type="submit" value="비밀번호변경">
	<a href="<%=request.getContextPath()%>/main">메인으로 </a>
</form>

</body>
</html>