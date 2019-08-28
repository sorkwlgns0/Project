<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList" %>

<%@page import="java.util.List" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String loginID = (String)session.getAttribute("login"); %>
<!doctype html>

<html>

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
<meta charset="UTF-8">
<script language="JavaScript">
var sell_price;
var amount;

function init () {
    sell_price = document.form.sell_price.value;
    amount = document.form.amount.value;
    document.form.sum.value = sell_price;
    change();
}

function add () {
    hm = document.form.amount;
    sum = document.form.sum;
    hm.value ++ ;

    sum.value = parseInt(hm.value) * sell_price;
}

function del () {
    hm = document.form.amount;
    sum = document.form.sum;
        if (hm.value > 1) {
            hm.value -- ;
            sum.value = parseInt(hm.value) * sell_price;
        }
}

function change () {
    hm = document.form.amount;
    sum = document.form.sum;

        if (hm.value < 0) {
            hm.value = 0;
        }
    sum.value = parseInt(hm.value) * sell_price;
}

function getXHR(){
	var req;
	try{
		req = new XMLHttpRequest();
	}catch(e){
		try{
			req = new ActiveObject('Msxm12.XMLHTTP');
		}catch(e){
			req = new ActiveXObject('Microsoft.XMLHTTP');
		}
	}
	return req;
}

function godelete(){
	var pop = window.open("../delete","pop","width=570, height=420, scrollbars=yes, resizable=yes");
}
</script>
<style>


.left-box {
  float: left;
  width: 50%;
  margin-top:50px;
}
.right-box {
  float: right;
  width: 50%;
  margin-top:30px;
}
.footer{
text-align: center;
}
</style>
</head>
<body onload="init();">
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
  <a href="<c:url value="/mypage"/>"><img src="<%=request.getContextPath()%>/images/top_menu_07.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_07_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_07.png';" alt="마이페이지"/></a>
  <a href="<%=request.getContextPath()%>/board_list/${1}"><img src="<%=request.getContextPath()%>/images/top_menu_08.png" onmouseover="this.src='<%=request.getContextPath()%>/images/top_menu_08_02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/top_menu_08.png';" alt="커뮤니티"/></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/logged_06.png"></a>
  <a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/check_02.png"></a>
  &nbsp;<a href="javascript:void(0)"><img src="<%=request.getContextPath()%>/images/btn_search2.png"></a>
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


<form name="form" method="post" action="<c:url value="/menu/buy/${menuVO.name }"/>">
<div class="content">
<div class="left-box">
<img src="<%=request.getContextPath()%>/images/menuimage/${menuVO.image }" height="500" width="500" style="margin-left:400px;"/>
</div>
<div class="right-box" style="display:inline-block;">
<div style="font-size:15px; padding:10px;">
<table>
        <tr>
            <td><div style="font-size:20px; padding:10px; font-weight:bold; margin-top:0px;">${menuVO.name }</div>
            <hr class="w3-border-grey" style="margin-top:5px;width:600px">
            <div style="margin-top:10px; font-weight:bold; display:inline-block;"> 판매가 </div>:  ${menuVO.price }원
            <div style="margin-top:10px;"> ${menuVO.cmt} </div>
                           <div style="margin-top:50px;"> 사이즈 : </div> 
            <select name="sizee" class="custom-select mb-3" style="margin-top:20px;">
                <option value="90">90</option>
                <option value="95">95</option>
                <option value="100">100</option>
                <option value="105">105</option>
                <option value="110">110</option>
            </select>
            <hr class="w3-border-grey" style="margin-top:0px;width:600px">
            <div style="font-size:12px; color:red;">
            	마우스 클릭 시 사이즈 선택가능.
            </div><br>
                           수량 : <input type=hidden name="sell_price" value="${menuVO.price }">
                 <input type="text" name="amount" value="1" size="3" onchange="change();" style="text-align:right">
                 <input type="button" value=" + " onclick="add();"><input type="button" value=" - " onclick="del();" >
                           　　　　　　　　　　　　　　결제 금액 : <input type="text" name="sum" size="11" style="text-align:right" readonly>원<br>
            <hr class="w3-border-grey" style="margin-top:15px;width:600px">
            <div style="font-size:12px; color:red;">
                            위 수량을 선택하시면 값이 자동으로 변환됩니다.
            </div>
                 <div style="margin-top:25px; margin-left:250px;">
                 <input type="hidden" name="seq" value="${menuVO.seq}">
                 <input type="hidden" name="image" value="${menuVO.image}">
                 
                 <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_buy.png" name="Submit" value="Submit" class="pull-right">
                 <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_cart.png" class="pull-right" onclick="">
                </div>
        </tr>
    </table>
</div>
</div>
</div>
</form>
<div class="footer">
<img src="<%=request.getContextPath()%>/images/footer.jpg" style="margin-top:100px;">
</div>
</body>
</html>