<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<style type="text/css">

table , td{
text-align:center;
}
</style>
<script>
function page_href() {
	location.href = "<%=request.getContextPath()%>/board_list/${num}";
	};
	
	function sendChildValue(image, name, price, menu) {

	opener.setChildValue(image, name, price, menu);

	window.close();    //자식창 닫기

	};
</script>

<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      	<span style="color:white">　상품검색</span>
    </li>
  </ul>
</nav>

<div class="container">
<form action="<c:url value="/board_search" />" method="POST">
    <table class="table table-bordered">
	<tbody>
    <tr>
    <th>
    <select class="form-control" id="subject" name = "subject">
		<option value="입금/결재 문의">단어로 검색</option>
	</select>
      </th>
      <td><input type="text" class="form-control" id="keyword" name="keyword"></td>

    <td>
    <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_board_search.gif" name="Submit" value="Submit"  style="padding:5px">
    </td>
     	</tr>
    </tbody>
    </table>
    </form>
</div>
<div class="board">
    <table class="table table-bordered">
    <thead>
      <tr bgcolor=#c0c0c0>
        <th width="20px" style="text-align:center;">ITEM</th>
        <th style="text-align:center;">상품정보</th>
        <th style="text-align:center;">선택</th>
      </tr>
    </thead>
    
<c:forEach var="menu" items="${keyword }" varStatus="status">
 <tbody>
      <tr>
      	<th style="text-align:center;">
      	<c:if test="${menu.image != null }"><img src="/TeamProject/${menu.image }" width="100" height="100"/></c:if>
      	</th>
        <th><br>이름 : ${menu.name}<br>
        가격 : ${menu.price}원</th>
        <th style="text-align:center;"><br><br><a href="javascript:sendChildValue('${menu.image}','${menu.name}','${menu.price}','${menu.seq}')"><img src="<%=request.getContextPath()%>/images/btn_board_select.gif"></a>
        </th>
      </tr>
    </tbody>
    </c:forEach>
  </table>
</div>

</body>
</html>