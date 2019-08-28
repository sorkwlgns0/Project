<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file ="/WEB-INF/view/main_top.jsp" %>
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
<link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
</head>
<style>
.mypageImage{
text-align: center;
}
.joincontent{
text-align: center;
padding:10px;
width:20%;
margin-left:770px;
margin-top:20px;
background:#FAFAFA;

}

</style>
<body>
<div class="mypageImage">
<div style="font-size:13px; padding:10px; font-weight:bold; margin-top:50px;" >
아이디 찾기
</div>
<div style="font-size:13px; padding:10px;">
<div class="joincontent" style="font-size:13px; padding:10px;">
<form action="<c:url value="/login/searchID"/>" method="post">
	<table class="table table-bordered">
		<tr>
			<th><i class='far fa-envelope' style='font-size:13px; color:red;'></i> 이메일 : </th>
			<td><input type="text" name="email" style="float:left;"/></td>
		</tr>
		<tr>
			<th><i class='far fa-id-card' style='font-size:14px; color:red;'></i> 이름 : </th>
			<td><input type="text" name="name" style="float:left;"/></td>
		</tr>
	</table>
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_submit.gif" name="Submit" value="Submit"  align="right" style="margin-top:20px;">
</form>
</div>
</div>
</div>
</body>
</html>