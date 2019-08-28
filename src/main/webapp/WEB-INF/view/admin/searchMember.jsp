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
총 가입된 회원 수 : ${cnt }
<form name="searchMember" method="post" action="<%=request.getContextPath()%>/admin/search">
	<input name="keyword">
	검색 키워드 입력 : <input type="submit" value="조회">
</form>
<c:forEach var="member" items="${searchMember }" varStatus="loop">
			<tr>
					<td><a href="<%=request.getContextPath()%>/admin/search/${member.seq}">아이디 : ${member.id } 이름 : ${member.name }</a></td><br>
			</tr>
</c:forEach>

</body>
</html>