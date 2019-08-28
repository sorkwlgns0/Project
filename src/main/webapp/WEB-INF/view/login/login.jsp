<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
</head>
<style>
.mypageImage{
text-align: center;
margin-top:150px;
}
.logincontent{
text-align: center;
padding:10px;
width:20%;
margin-left:760px;
margin-top:20px;
}
</style>
<body>

<%@ include file ="/WEB-INF/view/main_top.jsp" %>
<div class="mypageImage">
<img src="<%=request.getContextPath()%>/images/t_login.png">
<div class="right" style="font-size:13px; padding:10px;">
<form action="<c:url value="/login/login"/>" method="post">
	<div class="logincontent">
	<table class="table table-bordered">
		<tr>
			<td width="150"><img src="<%=request.getContextPath()%>/images/txt_id.png"> </td>
			<td><input type="text" name="id" style="float:left;"/></td>
			<td rowspan="2">
			<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/bt_login_ok.png" name="Submit" value="Submit">
		 </td>
		</tr>
		<tr>
			<td width="150"><img src="<%=request.getContextPath()%>/images/txt_pw.png"> </td>
			<td><input type="password" name="password" style="float:left;"/></td>
		</tr>
	</table>
<a href="<%=request.getContextPath()%>/register/step1"> 회원가입  /</a><a href="<%=request.getContextPath()%>/login/searchID"> 아이디찾기 /</a><a href="<c:url value="/login/searchPW"/>"> 비밀번호찾기 </a>
	
</div>
</form>
</div>
<img src="<%=request.getContextPath()%>/images/bnr_login2.png"><br>
<img src="<%=request.getContextPath()%>/images/footer.jpg" style="margin-top:100px;">

</div>

</body>
</html>