<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList" %>

<%@page import="java.util.List" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String loginID = (String)session.getAttribute("login"); %>
<!doctype html>
<html>
<head>
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link href="css/top.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="UTF-8">
<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

.openBtn {
  background: #f1f1f1;
  border: none;
  padding: 10px 15px;
  font-size: 20px;
  cursor: pointer;
}

.openBtn:hover {
  background: #bbb;
}

.overlay {
  height: 100%;
  width: 100%;
  display: none;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(0,0,0);
  background-color: rgba(0,0,0, 0.9);
}

.overlay-content {
  position: relative;
  top: 10%;
  width: 30%;
  text-align: center;
  margin-top: 30px;
  margin: auto;
}
.overlay .closebtn {
  position: absolute;
  top: 20px;
  right: 45px;
  font-size: 60px;
  cursor: pointer;
  color: white;
}

.overlay .closebtn:hover {
  color: #ccc;
}

.overlay input[type=text] {
  padding: 15px;
  font-size: 17px;
  border: none;
  float: left;
  width: 80%;
  background: white;
}

.overlay input[type=text]:hover {
  background: #f1f1f1;
}

.overlay button {
  float: left;
  width: 20%;
  padding: 15px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.overlay button:hover {
  background: #bbb;
}
</style>
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
  <a href="<%=request.getContextPath()%>/register/regi"><img src="<%=request.getContextPath()%>/images/top_menu_03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_03_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_03.png';" alt="회원가입"/></a>
  <% } else { %>
  <!-- 마우스오버 이미지 넣기 -->
  <a href="<%=request.getContextPath()%>/login/logout"><img src="<%=request.getContextPath()%>/images/logged_02.png" onmouseover="this.src='<%=request.getContextPath()%>/images/logged_02_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/logged_02.png';" alt="로그아웃"/></a>
 	<%} %>
  <a href="<%=request.getContextPath()%>/update"><img src="<%=request.getContextPath()%>/images/logged_03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/logged_03_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/logged_03.png';" alt="정보수정"/></a>
  <a href="<c:url value="/mypage"/>"><img src="<%=request.getContextPath()%>/images/top_menu_07.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_07_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_07.png';" alt="마이페이지"/></a>
  <a href="<%=request.getContextPath()%>/board_list/${1}"><img src="<%=request.getContextPath()%>/images/top_menu_08.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_08_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_08.png';" alt="커뮤니티"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/logged_06.png"></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/check_02.png"></a>
  &nbsp;
  <!--  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/btn_search2.png"></a>-->
  <div id="myOverlay" class="overlay">
  <span class="closebtn" onclick="closeSearch()" title="Close Overlay">×</span>
  <div class="overlay-content">
    <form action="<c:url value="/menu/search"/>" method="POST">
      <input type="text" placeholder="Search.." name="key">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>
   <input type="IMAGE" src="<%=request.getContextPath()%>/images/btn_search2.png" onclick="openSearch()"/>

</div>
	</div>
  <hr class="w3-border-grey" style="margin:auto;width:100%">
  <div class="top_menu middle">
  <a href="<%=request.getContextPath()%>/best_list"><img src="<%=request.getContextPath()%>/images/category_03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_03_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_03.png';" alt="베스트"/></a>
  <a href="<c:url value="/menu/list/2"/>"><img src="<%=request.getContextPath()%>/images/category_08.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_08_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_08.png';" alt="상의"/></a>
  <a href="<c:url value="/menu/list/3"/>"><img src="<%=request.getContextPath()%>/images/category_10.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_10_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_10.png';" alt="하의"/></a>
  <a href="<c:url value="/menu/list/4"/>"><img src="<%=request.getContextPath()%>/images/category_12.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_12_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_12.png';" alt="가방"/></a>
  <a href="<%=request.getContextPath()%>/sale_list"><img src="<%=request.getContextPath()%>/images/category_16.png" onmouseover="this.src='<%=request.getContextPath()%>/images/category_16_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/category_16.png';" alt="세일"/></a>

 </div>
</div>
</div>
<script>
function openSearch() {
	  document.getElementById("myOverlay").style.display = "block";
	}
	function closeSearch() {
	  document.getElementById("myOverlay").style.display = "none";
	}
</script>


</body>
</html>