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
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
       </c:when>
       <c:when test="${num == 2}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna02.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna02.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
       <c:when test="${num == 3}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna03.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna03.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
       <c:when test="${num == 4}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna04.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna04.png';" alt="마이페이지"/></a>
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
       <c:when test="${num == 5}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna07.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna07.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
        <c:when test="${num == 6}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna05.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna05.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna6.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna6.png';" alt="마이페이지"/></a>
         </c:when>
        <c:when test="${num == 7}">
		 <a href="<c:url value="/board_list/${1}" />"><img src="<%=request.getContextPath()%>/images/qna1.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna01.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna1.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${2}" />"><img src="<%=request.getContextPath()%>/images/qna2.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna02.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna2.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${3}" />"><img src="<%=request.getContextPath()%>/images/qna3.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna03.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna3.png';" alt="마이페이지"/></a>
       	 <a href="<c:url value="/board_list/${4}" />"><img src="<%=request.getContextPath()%>/images/qna4.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna04.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna4.png';" alt="마이페이지"/></a>
         <a href="javascript:btn_vip()"><img src="<%=request.getContextPath()%>/images/qna7.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna07.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna7.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${6}" />"><img src="<%=request.getContextPath()%>/images/qna5.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna05.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna5.png';" alt="마이페이지"/></a>
         <a href="<c:url value="/board_list/${7}" />"><img src="<%=request.getContextPath()%>/images/qna06.png" onmouseover="this.src='<%=request.getContextPath()%>/images/qna06.png';" onmouseout="this.src='<%=request.getContextPath()%>/images/qna06.png';" alt="마이페이지"/></a>
         </c:when>
</c:choose>
</div>



<hr class="w3-border-grey" style="margin-top:30px;width:74%">
<div class="container">
    <table class="table table-bordered">
	<tbody>
	<tr>
	<th class="jb-th-1">제목</th>
	<td>${boardVO.subject }</td> 
	<th class="jb-th-1">조회수</th>
	<td>${boardVO.readcount }</td> 
	</tr>
	<tr>
	<th class="jb-th-1">작성자</th>
	<td colspan="3">${boardVO.writer }</td> 
	<tr>
	<th class="jb-th-1" >작성일</th>
	<td colspan="3">${boardVO.regdate }</td> 
	</tr>
	<tr>
	<td colspan="4" height="300" align="center" style="padding:30px">${boardVO.content }</td> 
	</tr>
	</tbody>
	
	</table>
	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_list.gif" class="pull-left" onclick="page_href(); return false">
	<c:choose>
       <c:when test="${login == boardVO.writer}">
       <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_delete.gif" class="pull-right" onclick="read_delete();">
       <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_modify.gif" class="pull-right" onclick="read_modify();">
       </c:when>
    </c:choose>
	
</div>
<!--                     추가                         -->
    <!--  댓글  -->
    <div class="container">
        <label for="content">Comment</label>
        <form name="commentInsertForm">
            <div class="input-group">
               <input type="hidden" name="bno" value="${boardVO.num}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    
    <div class="container">
        <div class="commentList"></div>
    </div>
<jsp:include page="/WEB-INF/view/commentS.jsp">
    <jsp:param name="bno" value="${boardVO.num}"/>
    <jsp:param name="login" value="${login}"/>
</jsp:include>


<!-- footer -->
<div class="footer"><img src="<%=request.getContextPath()%>/images/footer.jpg"></div>
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
function page_href() {
	location.href = "<%=request.getContextPath()%>/board_list/${num}";
}
function read_modify(){
	location.href = "<%=request.getContextPath()%>/board_modify/${num}/${boardVO.num}";
}
function read_delete(){
        msg = "정말로 삭제하시겠습니까?";
        if (confirm(msg)!=0) {
        	location.href = "<%=request.getContextPath()%>/board_delete/${boardVO.boardno}/${boardVO.num}";
        } else {
            // no click
	}
}
function btn_vip(){
	if("${vip}" >= 150000){
		location.href = "<%=request.getContextPath()%>/board_list/${5}";
	}else{
	alert("VIP 회원 전용게시판입니다.");
	}
}
</script>
</html>