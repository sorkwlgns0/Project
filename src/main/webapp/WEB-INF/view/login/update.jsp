<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
		function del() {
	        msg = "정말로 탈퇴하시겠습니까?";
	        if (confirm(msg)!=0) {
	        	location.href = "<c:url value="/delete" />";
	        } else {
	            // no click
		}
		};
		function page_href(){
			history.back();
		}
	</script>
</head>
<style>
.mypageImage{
text-align: center;
margin-top:100px;
}
.mypageborder{
text-align: center;
border: 1px solid #e9e9e9e9;
padding:10px;
height:90px;
width:60%;
margin-left:400px;
margin-top:100px;
}
.left{
width:8%;
text-align:left;
float:left;

}
.right{
width:80%;
margin-right:5px;
text-align:left;
float:left;
}
.info{
text-align: center;
background-color:#f0f0f0;
padding:10px;
height:60px;
width:60%;
margin-left:400px;
margin-top:20px;
}
.update{
text-align: center;
padding:10px;
width:60%;
margin-left:400px;
margin-top:50px;
}
input::placeholder {
  color: #C0C0C0;
  padding:2px;
  font-size:12px;
}
.footer{
text-align: center;
}

</style>
<body>
	<%@ include file ="/WEB-INF/view/main_top.jsp" %>
	<div class="mypageImage">
	<img src="<%=request.getContextPath()%>/images/t_mypage.png"><br>
	<div class="mypageborder">
		<div class="left">
		<img src="<%=request.getContextPath()%>/images/img_member.gif">
		</div>
		<div class="right" style="font-size:13px; padding:10px;">
		저희 쇼핑몰을 이용해 주셔서 감사합니다.
		<div style="display:inline-block; color:blue; font-weight:bold">${update.name}</div>님은 
<c:choose>
		<c:when test="${update.howmuch >= 0 && update.howmuch <= 100000}">
		[브론즈]
		</c:when>
		<c:when test="${update.howmuch > 100000 && update.howmuch <= 200000}">
		<div style="display:inline-block; color:#FFD700; font-weight:bold">[골드]</div>
		</c:when>
		<c:when test="${update.howmuch > 200000 && update.howmuch <= 300000}">
		<div style="display:inline-block; color:#C0C0C0; font-weight:bold">[다이아]</div>
		</c:when>
		<c:when test="${update.howmuch > 300000}">
		<div style="display:inline-block; color:#660099; font-weight:bold">[VIP]</div>
		</c:when>
</c:choose>
		회원이십니다.<br>
		<div style="display:inline-block; color:blue; font-weight:bold">0원이상</div> 구매시 
		<div style="display:inline-block; color:blue; font-weight:bold">1%</div>을 추가적립 받으실 수 있습니다.
		</div>
	</div>
	<div class="info">
	<div class="right" style="font-size:13px; padding:10px; font-weight:bold; margin-left:300px;">
	ID :　
	<div style="display:inline-block; color:#0080ff; font-weight:bold">${update.id} 님</div>
	　　　　사용한총금액 : 
	<div style="display:inline-block; color:red; font-weight:bold">　${update.howmuch} 원</div>
	　　　　사용가능한포인트 :
	<div style="display:inline-block; color:red; font-weight:bold">　${update.point} Point</div>
	</div>
	</div>
	</div>
	
<div class="update" style="font-size:13px; padding:10px;">
	<form name="update" action="<c:url value="/modify/${update.seq}" />" method="POST">
		<div style="text-align:right; font-weight:bold"><span style = "color : red;">*</span>표시는 필수 입니다</div>
		<table class="table table-bordered">
    		<tbody>
            <tr>
                <th><span style = "color : red;">*</span>아이디: </th>
                <td><input type="text" style="float:left;" name="id" id="id" value="${update.id }" readonly></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>비밀번호: </th>
                <td><input type="text" style="float:left; width:400px" name="password" placeholder="변경할 패스워드를 입력해주세요." value=""></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>비밀번호확인: </th>
                <td><input type="text" style="float:left; width:400px" name="passwordConfirm" placeholder="변경할 패스워드를 다시한번 입력해주세요." value=""></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>이름: </th>
                <td><input type="text" style="float:left;" name="name" value="${update.name}"></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>주소: </th>
                <td><input type="text" style="float:left;" name="address" value="${update.address}"></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>휴대폰전화: </th>
                <td><input type="text" style="float:left;" name="mobile" value="${update.mobile}"></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>이메일: </th>
                <td><input type="text" style="float:left;" name="email" value="${update.email }"></td>
			</tr>
			<tr>
                <th><span style = "color : red;">*</span>생년월일: </th>
                <td><input type="text" style="float:left;" name="birth" value="${update.birth }"></td>
			</tr>
	  </tbody>
	</table>
	
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_modify_cancel.gif" class="pull-right" onclick="page_href(); return false">
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_modify_member.gif" name="Submit" value="Submit" class="pull-right">
	
	</form>
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_modify_out.gif" class="pull-left" onclick="del(); return false">
</div>
<div class="footer">
<img src="<%=request.getContextPath()%>/images/footer.jpg" style="margin-top:100px;">
</div>
</body>
</html>