<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>

<script>
		function del() {
			location.href="<c:url value="/delete" />"
		};
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
    	<c:choose>
    	<c:when test="${login == 'admin'}">
       	 관리자 모드입니다. <br>
   		 </c:when>
   		 <c:otherwise>
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
		 </c:otherwise>
   		 </c:choose>
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
	<c:choose>
    	<c:when test="${login == 'admin'}">
       	<a href="<c:url value="/adminmode" />"><img src="<%=request.getContextPath()%>/images/admin.png" onmouseover="this.src='<%=request.getContextPath()%>/images/admin_01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/admin.png';" alt="관리자" style="margin-top:50px;"/></a>
   		 </c:when>
    <c:otherwise>
	<a href="<c:url value="/buylist" />"><img src="<%=request.getContextPath()%>/images/mp_01.png" onmouseover="this.src='<%=request.getContextPath()%>/images/mp_01_2.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/mp_01.png';" alt="구매리스트" style="margin-top:50px;"/></a>
	<a href="<c:url value="/update" />"><img src="<%=request.getContextPath()%>/images/mp_02.png" onmouseover="this.src='<%=request.getContextPath()%>/images/mp_02_2.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/mp_02.png';" alt="마이페이지" style="margin-left:20px; margin-top:50px;"/></a>
	<a href="<c:url value="/bag" />"><img src="<%=request.getContextPath()%>/images/mp_03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/mp_03_2.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/mp_03.png';" alt="장바구니" style="margin-left:20px; margin-top:50px;"/></a>
	</c:otherwise>
	</c:choose>
	</div>
<div class="footer">
<img src="<%=request.getContextPath()%>/images/footer.jpg" style="margin-top:100px;">
</div>
</body>
</html>