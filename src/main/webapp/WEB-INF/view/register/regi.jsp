<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ include file ="/WEB-INF/view/main_top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<script>
function idCheck(id){
	if(id == ""){
		alert("아이디를 입력해주세요.");
		document.step1.id.focus();
		return false;
	}
	else {
		var popWidth = 300;
		var popHeight = 200;
		var winHeight = document.body.clientHeight;
		var winWidth= document.body.clientWidth;
		var winX = window.screenLeft;
		var winY = window.screenTop;
		var popX = winX + (winWidth + popWidth) /2;
		var popY = winY + (winHeight + popHeight) /2;
		url = "idCheck?id="+id;
		window.open(url, "post", "left="+popX+",top="+popY+",width="+popWidth+", height="+popHeight);
	}
}
function inputCheck(){
	if(document.step1.id.value==""){
		alert("아이디를 입력해 주세요");
		document.step1.id.focus();
		return false;
	}
	if(document.step1.password.value==""){
		alert("비밀번호를 입력해 주세요");
		document.step1.password.focus();
		return false;
	}
	if(document.step1.password.value != document.step1.passwordConfirm.value){
		alert("비밀번호가 일치 하지 않습니다");
		document.step1.password.focus();
		return false;
	}
	if(document.step1.name.value==""){
		alert("성함을 입력해 주세요");
		document.step1.name.focus();
		return false;
	}
	if(document.step1.address.value==""){
		alert("주소를 입력해 주세요");
		document.step1.address.focus();
		return false;
	}
	if(document.step1.mobile.value==""){
		alert("휴대전화 번호를 입력해 주세요");
		document.step1.mobile.focus();
		return false;
	}
	if(document.step1.email.value==""){
		alert("이메일을 입력해 주세요");
		document.step1.email.focus();
		return false;
	}
	if(document.step1.birth.value==""){
		alert("생년월일를 입력해 주세요");
		document.step1.birth.focus();
		return false;
	}
	var str= document.step1.email.value;
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.');
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if(atPos > 1 && atPos == atLastPos && dotPos > 3 && spacePos == -1 && commaPos == -1 && atPos +1 < dotPos && dotPos + 1 < eMailSize);
	else {
		alert('E-mail 주소 형식이 잘못 되었습니다');
		document.step1.email.focus();
		return false;
	}
}
</script>
<meta charset="UTF-8">
<title><spring:message code="member.register"/></title>
<style type="text/css">
	.img_wrap{
	width:200px;
	margin-top:30px;
	}
	.img_wrap img {
	max-width:200px;
	}
	.mypageImage{
text-align: center;
margin-top:150px;
}
.joincontent{
text-align: center;
padding:10px;
width:65%;
margin-left:330px;
margin-top:20px;
background:#FAFAFA;
border:1px solid #BDBDBD;
}
.footer{
text-align: center;
}
</style>

<style type="text/css"> .tg {border-collapse:collapse;border-spacing:0;} .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;} .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;} .tg .tg-0lax{text-align:left;vertical-align:top} .tg .tg-xldj{border-color:inherit;text-align:left} </style>
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
<body>
<div class="mypageImage">
	<img src="<%=request.getContextPath()%>/images/bnr_join_benefit2.png"><br>
	<img src="<%=request.getContextPath()%>/images/t_join.png" style="margin-top:50px;"><br>
	<div style="font-size:13px; padding:10px;">
	
	<form action="<c:url value="/register/regi2"/>" method="post" name="step1" onsubmit="return inputCheck()">
	<div class="joincontent" style="font-size:13px; padding:10px; color:#A4A4A4;">
	<label>
	<textarea rows="10" cols="80" readonly><spring:message code="term1.1"/></textarea>
	<textarea rows="10" cols="80"readonly><spring:message code="term1.2"/></textarea>
	<br>
	<span style = "color : red; float:right">동의함</span>
	<input type="checkbox" name="agree" value="true" style="float:right">
	<span style = "color : red; float:left">개인정보 수집 및 이용에 동의하십니까?</span>
	</label>
	</div>
	
	<div class="joincontent" style="font-size:13px; padding:10px;">
	<table class="table table-bordered">
		<tr>
		<th colspan="3"><div style="text-align:right"><span style = "color : red;">*</span>표시는 필수 입니다</div></th>
		</tr>
	  <tr>
			<th><span style = "color : red;">*</span> <i class='fas fa-user-circle' style='font-size:13px'></i> ID : </th>
			<td><input type="text" class="form-control" id="id" name="id" placeholder="ID" style="float:left; width:400px" required>
			<input type="button" value="중복확인" onclick="idCheck(this.form.id.value)" style="float:left; margin-left:10px"/></td>
	  </tr>
	  <tr>
	    	<th><span style = "color : red;">*</span> <i class='fas fa-key' style='font-size:13px'></i> 비밀번호 : </th>
	    	<td><input class="form-control" type="password" name="password" placeholder="비밀번호" style="float:left; width:400px" required></td>
	  </tr>
	  <tr>
	    <th><span style = "color : red;">*</span> <i class='fas fa-key' style='font-size:13px'></i> 비밀번호확인 : </th>
	    <td><input class="form-control" type="password" name="passwordConfirm" placeholder="비밀번호 재입력" style="float:left; width:400px" required></td>
	  </tr>
	  <tr>
	    <th><span style = "color : red;">*</span> <i class='far fa-id-card' style='font-size:14px'></i> 이름 : </th>
	    <td><input class="form-control" type="text" name="name" placeholder="이름" style="float:left; width:400px" required></td>
	  </tr>
	  <tr>
	    <th><span style = "color : red;">*</span> <i class='fas fa-home' style='font-size:13px'></i> 주소 : </th>
	    <td><input class="form-control" type="text" name="address" placeholder="주소" style="float:left; width:400px" required></td>
	  </tr>
	  <tr>
	    <th><span style = "color : red;">*</span> <i class='fas fa-phone' style='font-size:13px'></i> 휴대폰전화</th>
	    <td><input class="form-control" type="text" name="mobile" placeholder="전화번호" style="float:left; width:400px" required></td>
	   </tr>
	 <tr>
	 	<th><span style = "color : red;">*</span> <i class='far fa-envelope' style='font-size:13px'></i> 이메일</th>
	    <td><input class="form-control" type="text" name="email" placeholder="이메일" style="float:left; width:400px" required ></td>
	  </tr>
	  <tr>
	 	<th><span style = "color : red;">*</span> <i class='fas fa-birthday-cake' style='font-size:14px'></i> 생년월일</th>
	    <td><input class="form-control" type="text" name="birth" placeholder="생년월일" style="float:left; width:400px" required></td>
	  </tr>
	  
	</table>
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/bt_join_cancel.png" onclick="javascript:history.go(-1)" align="right" style="margin-top:20px;">
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/bt_join_ok.png" name="Submit" value="Submit"  align="right" style="margin-top:20px;">
	
	</div>
	
	</form>
	<div class="footer" style="font-size:13px; padding:10px;">
	<img src="<%=request.getContextPath()%>/images/footer.jpg" style="margin-top:100px;">
	</div>
	</div>
	</div>
</body>
</html>