
    
    <!-- 성민 -->
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>


  <!-- Skitter JS -->
  <script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" language="javascript" src="<%=request.getContextPath()%>/js/jquery.skitter.min.js"></script>
  
  <link href="<%=request.getContextPath()%>/css/skitter.styles.min.css" type="text/css" media="all" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
<style>
.best{
font-size:15px;
font-family: Arial, Helvetica, sans-serif;
}
.bin{
margin-top:30px;
}
</style>

<body>
 <%@ include file ="/WEB-INF/view/main_top.jsp" %>

<div class="bin"></div> 
<div class="best">
<div class="center-body">
<c:choose>
<c:when test="${category==2}">
<img src="<%=request.getContextPath()%>/images/top.png" style="margin-right:70px">
</c:when>
<c:when test="${category==3}">
<img src="<%=request.getContextPath()%>/images/pants.png" style="margin-right:70px">
</c:when>
<c:when test="${category==4}">
<img src="<%=request.getContextPath()%>/images/bag.png" style="margin-right:70px">
</c:when>
</c:choose>
 
<table border="0"> 
<c:set var="i" value="0" /> 
<c:set var="j" value="5" /> 
<c:forEach var="item" items="${menuList }" varStatus="loop" end="9"> 
<c:if test="${i%j == 0 }"> 
<tr> 
</c:if> 
<td>
	<div class="wrap effect8">
		<a href="<c:url value="/menu/read/${item.seq}"/>"><img src="<%=request.getContextPath()%>/images/menuimage/${item.image}" width="100%"></a>
		<div class="name">
		<a href="<c:url value="/menu/read/${item.seq}"/>">${item.name}</a></div>
		<div class="price">
		${item.price}원
		</div>
	</div>
&nbsp;&nbsp;&nbsp;&nbsp;
</td> 
<c:if test="${i%j == j-1 }"> 
</tr> 

</c:if> 
<c:set var="i" value="${i+1 }" /> 
</c:forEach> 

</table></form>
</div>
</div>

<!-- footer -->

<div class="footer"><img src="<%=request.getContextPath()%>/images/footer.jpg"></div>
</body>
</html>