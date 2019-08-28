<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
  
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
  .bin{
margin-top:30px;
}
.boardno6 { 
border: solid 5px #aaa;
height:200px;
width:1110px;
margin-top:10px;
margin-bottom:10px;
}
.left-box {

  float: left;
  width: 15%;
  height:150px;
  padding:10px;
  margin-top:20px;
}
.right-box {

  float: right;
  width: 85%;
  margin-top:20px;
  height:150px;

}
.best{
font-size:15px;
font-family: Arial, Helvetica, sans-serif;
}
.bin{
margin-top:30px;
}
.qna_menu{
	 width: 1670px;
     height: auto;
	 text-align:center;
	 margin-top: 50px;
	 margin-left:120px;
}

  .jb-th-1 {
    width: 70px;
    text-align:center;
  }


.container{
margin-bottom:40px;}
</style>

<body>
 <%@ include file ="/WEB-INF/view/main_top.jsp" %>
 <div class="bin"></div>
<div class="footer"><img src="<%=request.getContextPath()%>/images/t_qna.png"></div>
<div class="qna_menu">
<c:choose>
       <c:when test="${num == 1}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna01.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna01.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
       </c:when>
       <c:when test="${num == 2}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna02.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna02.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
       <c:when test="${num == 3}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna03.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
       <c:when test="${num == 4}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna04.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna04.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
       <c:when test="${num == 5}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna07.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna07.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
        <c:when test="${num == 6}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna05.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna05.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
        <c:when test="${num == 7}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${5}" />"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna06.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna06.png';" alt="마이페이지"/></a>
         </c:when>
</c:choose>
</div>
<hr class="w3-border-grey" style="margin-top:30px;width:74%">
<div class="container">
<form action="<c:url value="/board_modify/${num}/${readnum}" />" id="form" name="form" method="POST" enctype="multipart/form-data">
     <c:choose>
       <c:when test="${num == 6}">
       	<div class="boardno6">
       	<div class="left-box">
       	<img id ="image" alt="img" src="<%=request.getContextPath()%>/images/75x75.gif" width="140" height="170" style="margin-left:5px; margin-top:-20px;">
		  
       	</div>
       	<div class="right-box">
       	<br>
       	<input type="text" name="selectname" id="selectname" value="" style="margin-left:20px; border: none; background: transparent; font-weight:bold;" readonly/><br>
		<input type="text" name="category" id="price" value="" style="margin-left:20px; border: none; background: transparent; font-weight:bold; color:blue" readonly/>
       	<hr width="96%" style="margin-top:0px;">
       	<img src="<%=request.getContextPath()%>/images/btn_prd_select.gif" alt="" class="btn" onclick="showPopup();" style="margin-top:-20px; margin-left:6px; font-weight:bold;"/>
		</div>
    </div>
       </c:when>
       </c:choose>
    <table class="table table-bordered">
	<tbody>
	<tr>
	<th class="jb-th-1">제목</th>
	<td>${boardVO.subject }</td> 
	</tr>
	<tr>
	<th class="jb-th-1">작성자</th>
	<td colspan="3">${boardVO.writer }</td> 
	<tr>
	<th class="jb-th-1" >작성일</th>
	<td colspan="3">${boardVO.regdate }</td> 
	</tr>
           <tr>
                <th>내용: </th>
                <td><textarea cols="30" rows="20" placeholder="${boardVO.content } " name="content" id="content" class="form-control"></textarea></td>
            </tr>
	<tr>
         <th>첨부파일: </th>
         <td><input type="file" placeholder="파일을 선택하세요. " name="image" id="filename" class="form-control-file border"/>
             <input type="hidden" name="writer" value="${login}">
             <input type="hidden" name="num" value="${boardVO.num}">
             <input type="hidden" name ="selectimage" id ="selectimage" value="">
             <input type="hidden" name="selectname" id="selectname" value="">  
         </td>
    </tr>
    
	</tbody>
	</table>
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_list.gif" class="pull-left" onclick="page_href(); return false">
    <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_modify.gif" onclick="Check(); return false" class="pull-right">
	</form>
</div>
</body>
<script>
function page_href() {
	location.href = "<%=request.getContextPath()%>/board_list/${num}";
}

function showPopup() { 
	window.open("<%=request.getContextPath()%>/board_search", "a", "width=600, height=400, left=100, top=50"); 
	}
function setChildValue(image, selectname, price){
	document.getElementById("image").src = "/TeamProject/images/"+image;
    document.getElementById("selectname").value = selectname;
    document.getElementById("selectimage").value = image;
    document.getElementById("price").value = price +"원";
}
function Check(){
	if(document.form.content.value==""){
		alert("내용을 입력해주세요.");
		document.form.content.focus();
		return;
	}

	document.form.submit();
}
</script>
</html>