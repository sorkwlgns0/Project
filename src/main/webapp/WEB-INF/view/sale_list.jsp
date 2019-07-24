<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<c:forEach var="item" items="${shoppingList }" varStatus="loop" end="9"> 
<c:if test="${i%j == 0 }"> 
<tr> 
</c:if> 
<td>
	<div class="wrap effect8">
		<img src="images/${item.image}" width="100%">
		<img src="images/sale_icon.png" ><br>
		<div class="name">
		${item.name}</div>
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