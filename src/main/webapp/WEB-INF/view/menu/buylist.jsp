<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
</head>
<style>
.content{
text-align:center;
align:center;
width:100%;
}
.content.table{
display: inline-block;
width:100%;
border: 1px solid width;
height:400px;
}

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
<div class="content">
	<div class="content table">
		<table class="table table-bordered" style="border-left:none; border-right:none;">
    		<tbody>
            <tr>
            <th style="background-color:#FBEFEF; border-left:none; border-right:none;" colspan="9">
            <i class='fas fa-exclamation-circle' style='font-size:12px;color:red;'></i>
            <span style="color:red; font-size:12px;"> 구매 리스트입니다.</span>
            </th>
            </tr>
            <tr>
            <th style="background-color:#F2F2F2;" colspan="9">국내배송 주문내역
            <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_prev.gif" class="pull-right" onclick="history.go(-1); return false">
            </th>
            </tr>
            <tr style="background-color:#FAFAFA;">
            <th>이미지</th>
            <th width="150">상품정보</th>
            <th>주소</th>
            <th width="60">판매가</th>
            <th width="50">수량</th>
            <th width="60">사이즈</th>
            <th width="100">포인트</th>
            <th width="100">현재상태</th>
            <th width="60">합 계</th>
            </tr>
            
            <c:forEach var="buy" items="${buylist }" varStatus="status">
            <tr>
            <td valign="middle"><img src="<%=request.getContextPath()%>/images/menuimage/${buy.image}" width="60" height="70"> 
            <td width="150" style="line-height:70px;" valign="middle">${buy.buyname}</td>
            <td valign="middle" style="line-height:70px;">${buy.address}</td>
            <td width="60" valign="middle" style="line-height:70px;">${buy.price}</td>
            <td width="50" valign="middle" style="line-height:70px;">${buy.amount}</td>
            <td width="60" valign="middle" style="line-height:70px;">${buy.sizee}</td>
            <!-- 포인트 계산 -->
            <fmt:parseNumber var="test" value="${buy.price/100}"/>
            <td width="100" valign="middle" style="line-height:70px;">${test}적립</td>
            <td width="100" valign="middle" style="line-height:70px;">
            <c:choose>
       		<c:when test="${buy.status == 0}">
       		배송준비중
       		</c:when>
       		<c:when test="${buy.status == 1}">
       		배송완료
       		</c:when>
       		</c:choose>
            </td>
            <td width="60" valign="middle" style="line-height:70px;">합 계</td>
            </tr>
            </c:forEach>
            <tr>
            <th style="background-color:#FBEFEF; border-left:none; border-right:none;" colspan="9">
            <i class='fas fa-exclamation-circle' style='font-size:12px;color:red;'></i>
            <span style="color:red; font-size:12px;"> 구매 리스트입니다.</span>
            </th>
            </tr>
            </tbody>
        </table>
	</div>
</div>
</div>
</body>
</html>