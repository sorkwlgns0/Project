<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
  <script type="text/javascript" language="javascript" src="js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" language="javascript" src="js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" language="javascript" src="js/jquery.skitter.min.js"></script>
  
  <link href="css/skitter.styles.min.css" type="text/css" media="all" rel="stylesheet" />
  <link href="css/top.css" type="text/css" rel="stylesheet" />
  <link href="css/main.css" type="text/css" rel="stylesheet" />
<style>
.sale{
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
 <div class="sale">
<div class="center-body">
<img src="images/saleitem.png" style="margin-right:70px">
<table border="0"> 
<c:set var="i" value="0" /> 
<c:set var="j" value="5" /> 
<c:forEach var="sale" items="${saleList }" varStatus="loop" end="9"> 
<c:if test="${i%j == 0 }"> 
<tr> 
</c:if> 
<td>
	<div class="wrap effect8">
		<a href="<c:url value="/menu/read/${sale.seq}"/>"><img src="images/menuimage/${sale.image}" width="100%"></a>
		<c:choose>
		<c:when test="${sale.buys > 10 }">
		<img src="images/best_icon.png" >
		</c:when>
		</c:choose>
		<img src="images/sale_icon.png" ><br>
		<div class="name">
		<a href="<c:url value="/menu/read/${sale.seq}"/>">${sale.name}</a></div>
		<div class="price" style="display:inline; font-style:italic; text-decoration: line-through; ">
		${sale.price}원
		</div>
		<!-- 백분율 계산후 소수점 삭제 -->
		　<fmt:parseNumber var="test" value="${sale.price - ((sale.price * sale.sale)/100)}"/>
		${test}원
	</div>
&nbsp;&nbsp;&nbsp;&nbsp;
</td> 
<c:if test="${i%j == j-1 }"> 
</tr> 

</c:if> 
<c:set var="i" value="${i+1 }" /> 
</c:forEach> 
</table>
</div>
</div>

<!-- footer -->

<div class="footer"><img src="images/footer.jpg"></div>

</body>
<script>
$(document).ready(function() {
    $('.box_skitter_large').skitter({
      theme: 'clean',
      numbers_align: 'center',
      progressbar: true, 
      dots: true, 
      preview: true
    });
  });

window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
</html>