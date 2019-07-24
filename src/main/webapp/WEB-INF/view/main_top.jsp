<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList" %>

<%@page import="java.util.List" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String loginID = (String)session.getAttribute("login"); %>
<!doctype html>

<html>

<head>

<link href="css/main.css" type="text/css" rel="stylesheet" />
<link href="css/top.css" type="text/css" rel="stylesheet" />
<meta charset="UTF-8">

</head>

<body>

<!--  탑 메뉴-->
<div class="header">
<img src="<%=request.getContextPath()%>/images/top_image.png">
</div>
<div class="test1" id="test1">
<div id="navbar">
 <div class="top_menu">
 <div class="top_menu left middle">
 <a href="<%=request.getContextPath()%>/main"><img src="<%=request.getContextPath()%>/images/logo3.png"></a>
 </div>
 	<div class="top_menu right middle">
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/top_menu_01.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_01_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_01.png';" alt="북마크"/></a>
    <% if(loginID == null) {%>
  <a href="<%=request.getContextPath()%>/login/login"><img src="<%=request.getContextPath()%>/images/top_menu_02.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_02_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_02.png';" alt="로그인"/></a>
  <% } else { %>
  <!-- 마우스오버 이미지 넣기 -->
  <a href="<%=request.getContextPath()%>/login/logout"><img src="<%=request.getContextPath()%>/images/logged_02.png" onmouseover="this.src='<%=request.getContextPath()%>/images/logged_02_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/logged_02.png';" alt="로그아웃"/></a>
 	<%} %>
  <a href="<%=request.getContextPath()%>/register/step1"><img src="<%=request.getContextPath()%>/images/top_menu_03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_03_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_03.png';" alt="회원가입"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/top_menu_07.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_07_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_07.png';" alt="마이페이지"/></a>
  <a href="<%=request.getContextPath()%>/board_list/${1}"><img src="<%=request.getContextPath()%>/images/top_menu_08.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_08_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_08.png';" alt="커뮤니티"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/logged_06.png"></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/check_02.png"></a>
  &nbsp;<a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/btn_search2.png"></a>
</div>
	</div>
	 <hr class="w3-border-grey" style="margin:auto;width:100%">
	 <div class="top_menu middle">
  <a href="<%=request.getContextPath()%>/best_list"><img src="<%=request.getContextPath()%>/images/category_03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_03_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_03.png';" alt="베스트"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/category_08.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_08_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_08.png';" alt="상의"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/category_10.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_10_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_10.png';" alt="하의"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/category_12.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_12_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_12.png';" alt="가방"/></a>
  <a href="<%=request.getContextPath()%>/sale_list"><img src="<%=request.getContextPath()%>/images/category_16.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_16_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_16.png';" alt="세일"/></a>
 </div>
</div>
</div>

</body>

</html>