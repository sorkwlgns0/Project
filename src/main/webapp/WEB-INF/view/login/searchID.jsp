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
<form action="<c:url value="/login/searchID"/>" method="post">
	<table>
		<tr>
			<td>이메일 : </td>
			<td><input type="text" name="email"/></td>
		</tr>
		<tr>
			<td>이름 : </td>
			<td><input type="text" name="name"/></td>
		</tr>
	</table>
	<input type="submit" value="아이디 찾기">
	<a href="<%=request.getContextPath()%>/main">메인으로 </a><a href="<%=request.getContextPath()%>/login/searchPW"> 비밀번호찾기 </a>
</form>

</body>
</html>