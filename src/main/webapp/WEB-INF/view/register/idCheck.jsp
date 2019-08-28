<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id2 = request.getParameter("id");
	int check = (int)session.getAttribute("check");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js"></script>
</head>
<body>
	<c:if test="${check >= 1 }"> <%=id2 %>는 이미 존재하는 ID입니다.<br/><br/></c:if>
	<c:if test="${check == 0 }"> <%=id2 %>는 사용가능합니다.<br/><br/></c:if>
<a href="#" onClick="javascript:self.close()">닫기</a>
</body>
</html>