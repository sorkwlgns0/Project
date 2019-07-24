<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList" %>

<%@page import="java.util.List" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>

<html>

<head>

  <link rel="stylesheet" href="css/bxslider.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

 

  <script>

    $(document).ready(function(){

      $('.slider').bxSlider();

    });

  </script>

 

 

<meta charset="UTF-8">

</head>

<style>

  *{margin:0;padding:0;}

  ul,li{list-style:none;}

  #slide{height:300px;position:relative;overflow:hidden;}

  #slide ul{width:400%;height:100%;transition:1s;}

  #slide ul:after{content:"";display:block;clear:both;}

  #slide li{float:left;width:25%;height:100%;}

  #slide li:nth-child(1){background:#faa;}

  #slide li:nth-child(2){background:#ffa;}

  #slide li:nth-child(3){background:#faF;}

  #slide li:nth-child(4){background:#aaf;}

  #slide input{display:none;}

  #slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;border:2px solid #666;background:#fff;transition:0.3s;border-radius:50%;cursor:pointer;}

  #slide .pos{text-align:center;position:absolute;bottom:10px;left:0;width:100%;text-align:center;}

  #pos1:checked~ul{margin-left:0%;}

  #pos2:checked~ul{margin-left:-100%;}

  #pos3:checked~ul{margin-left:-200%;}

  #pos4:checked~ul{margin-left:-300%;}


</style>

<div id="slide">

  <input type="radio" name="pos" id="pos1" checked>

  <input type="radio" name="pos" id="pos2">

  <input type="radio" name="pos" id="pos3">

  <input type="radio" name="pos" id="pos4">

  <ul>

  

<li>
<c:forEach var="item" items="${shoppingList }" begin="0" varStatus="status">
	<c:choose>
		<c:when test="${item.seq >=0 && item.seq<=3}">
			${item.seq}<br>
		</c:when>
	</c:choose>
</c:forEach>
</li>

    

    <li>

    <c:forEach var="item" items="${shoppingList }" begin="0" varStatus="status">

	<c:choose>

	<c:when test="${item.seq >=4 && item.seq<=6}">

	${item.seq}<br>

	</c:when>

	</c:choose>

	</c:forEach>

    </li>

    <li>

    <c:forEach var="item" items="${shoppingList }" begin="0" varStatus="status">

	<c:choose>

	<c:when test="${item.seq >=7 && item.seq<=10}">

	${item.seq}<br>

	</c:when>

	</c:choose>

	</c:forEach>

    </li>

    

  </ul>

  <p class="pos">

    <label for="pos1"></label>

    <label for="pos2"></label>

    <label for="pos3"></label>

    <label for="pos4"></label>

  </p>

</div>

<c:set var="age">15</c:set>

<c:choose>

<c:when test="${age>=20}">

성인.

</c:when>

<c:when test="${age>0 && age<20}">

미성년자.

</c:when>

<c:otherwise>

0보다 큰수를 입력하세요.

</c:otherwise>

</c:choose>

 

 

 

 

 

 

<div class="slider">

<img src="images/img1.jpg" />

<img src="images/img2.jpg" />

<img src="images/img3.jpg" /> 

</div>

 

</body>

</html>