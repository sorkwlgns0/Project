<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page import="shopping.domain.MemberVO" %>
      <% MemberVO memberVO = (MemberVO)request.getAttribute("member");  %>
<!DOCTYPE html>
<html>
<head>
<script>
function alert(){
	alert("회원이 탈퇴되었습니다.");
	history.back();
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			<tr>
					<td>아이디 : ${member.id }</td><br>
					<td>이름 : ${member.name }</td><br>
					<td>주소 : ${member.address }</td><br>
					<td>휴대폰 : ${member.mobile }</td><br>
					<td>이메일 : ${member.email }</td><br>
					<td>현재포인트 : ${member.point }</td><br>
					<td>총구매금액 : ${member.howmuch }</td>
					<td>현재등급 : <c:if test="${member.howmuch >= 200000 }">VIP</c:if>
					<c:if test="${member.howmuch < 200000 }">일반회원</c:if>
			</tr>
			<form action="<%=request.getContextPath()%>/admin/deleteMember/${member.seq}" method="post">
			<input type="submit" value="강제회원탈퇴" onclick="alert()">
			</form>
</body>
</html>