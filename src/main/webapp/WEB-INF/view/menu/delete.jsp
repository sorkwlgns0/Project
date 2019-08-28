<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form name="deleteForm" action="<c:url value="/menu/delete" />" method="POST">
    <input size="1" name="seq" value="${seq }"/>
        해당 글을 삭제하시겠습니까?<br>
        비밀번호<input name="pwd"/>
        <input type="submit" value="삭제">
        <input type="button" value="취소" onclick="history.back();">   
    </form>
    <div>${msg }</div>
</body>
</html>