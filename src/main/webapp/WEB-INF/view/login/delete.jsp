<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>
<body>
<form name="delete" action="<c:url value="/delete" />" method="POST">
<input type="hidden"size="0" name="seq" value="${update.seq}" />
비밀번호 입력 : <input type="password" name="pwd"><br>
<input type="submit" value="비밀번호 확인">
</form>
	<div>${msg}</div>
</body>
</html>