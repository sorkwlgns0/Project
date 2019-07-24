<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id2 = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="script.js"></script>
</head>
<body>
ㅋㅋ<%= id2 %>
<c:forEach var="id" items="${idList }" varStatus="loop">
	<c:if test="${id.id == id2 }"> <%=id2 %>는 이미 존재하는 ID입니다.<br/><br/></c:if>
	<c:if test="${id.id != id2 }"> <%=id2 %>는 사용가능합니다.<br/><br/></c:if>
<a href="#" onClick="javascript:self.close()">닫기</a>
</c:forEach>
</body>
</html>