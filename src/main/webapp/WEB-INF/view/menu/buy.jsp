<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String loginID = (String)session.getAttribute("login"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script language="javascript">
function goPopup(){
    var pop = window.open("../jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes");  
}

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
                        , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
    document.form.roadAddrPart1.value = roadAddrPart1;
    document.form.roadAddrPart2.value = roadAddrPart2;
    document.form.addrDetail.value = addrDetail;
    document.form.zipNo.value = zipNo;
}

function Check(){
	if(document.form.buyname.value==""){
		alert("주문자 성함을 입력해 주세요.");
		document.form.buyname.focus();
		return;
	}
	if(document.form.zipNo.value==""){
        alert("주소를 입력해 주세요.");
        document.form.zipNo.focus();
        return;
    }
	if(document.form.addrDetail.value==""){
        alert("상세 주소를 입력해 주세요.");
        document.form.addrDetail.focus();
        return;
    }
	document.form.submit();
}

function cal(val){
    var point1 = parseInt(val);
    var interest = ${nowpoint};
    
    if(val > interest){
    	$('font[name=check]').css('color', 'red');
    	$('font[name=check]').html("사용가능한 포인트가 초과되었습니다.");

    }else{
    	$('font[name=check]').css('color', 'black');
    	$('font[name=check]').html("사용가능한 포인트입니다.");
    }
}

</script>

<style>
.content{
text-align:center;
margin-top:20px;

margin-left:200px;
width:80%;
}

</style>
<title>주소 입력 샘플</title>
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
<div class="content">
<img src="<%=request.getContextPath()%>/images/t_order.png">

<hr class="w3-border-grey" style="margin-top:15px;width:100%">

<div style="font-size:13px; padding:10px; width:800px; margin-left:350px;">
<form name="form" id="form" method="POST" action="<c:url value="/menu/finish" />">
   <div style="text-align:right; font-weight:bold"><span style = "color : red;">*</span>표시는 필수 입니다</div>
		<table class="table table-bordered" width="60%">
    		<tbody>
            <tr>
            
                <c:forEach var="name" items="${menuVO}" varStatus="loop">
                    <th>구입 제품명 :</th> <td><input type="text"  style="float:left;" name="buyname" value="${name}" readonly></td></c:forEach>
                </tr> 
                <tr>
                    <th>구입 사이즈 : </th><td><input type="text"  style="float:left;" name="sizee" value="${sizee}" readonly></td>
                </tr>
                <tr>
                    <th>구입 수량 : </th><td><input type="text"  style="float:left;" name="amount" value="${amount}" readonly></td>
                </tr>
                <tr>
                    <th><span style = "color : red;">*</span>주문자 성명</th>
                    <td>
                        <input type="text" name="name" style="float:left;">
                    </td>
                </tr>
                <tr>
                <th>포인트</th>
                <td>
                <input type="text" id="point1" onkeyup="cal(this.value)" style="float:left;" placeholder="사용가능한 포인트 ${nowpoint}"/>
    			<font name="check" size="2" color="red"></font>
    			</td> 
                </tr>
                <tr>
                    <th><span style = "color : red;">*</span>우편번호</th>
                    <td>
                        <input type="hidden" id="confmKey" name="confmKey" value=""  >
                        <input type="text" id="zipNo" style="float:left;" name="zipNo" readonly style="width:100px">
                        <input type="button"  value="주소검색" onclick="goPopup();" style="float:left;">
                        <input type="hidden"  name="id" value="${login}" >
                    	<input type="hidden"  name="status" value="0">
                    	<input type="hidden"  name="price" value="${sum}">
                    	<input type="hidden"  name="buylist" value="${buylist}">
                    	<input type="hidden"  name="image" value="${image}">
                    	<!-- 포인트 계산 1%-->
                    	<fmt:parseNumber var="point" value="${sum / 100}"/>
						<input type="hidden"  name="point" value="${point}">
                    </td>
                </tr>
                <tr>
                    <th><label><span style = "color : red;">*</span>도로명주소</label></th>
                    <td><input type="text" name="roadAddrPart1" id="roadAddrPart1" style="width:80%; float:left;" ></td>
                </tr>
                <tr>
                    <th><span style = "color : red;">*</span>상세주소</th>
                        <td>
                            <input type="text" name="addrDetail" id="addrDetail" style="width:40%; float:left;">
                            <input type="text" name="roadAddrPart2" id="roadAddrPart2"  style="width:40%; float:left;" value="">
                        </td>
                </tr>
            </tbody>
        </table>
        <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_order.gif" class="pull-right" onclick="Check(); return false">
       
</form>
</div>
</body>
</html>