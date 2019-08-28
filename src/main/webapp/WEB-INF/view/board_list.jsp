<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link href="<%=request.getContextPath()%>/css/top.css" type="text/css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/css/main.css" type="text/css" rel="stylesheet" />
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
.board{
	 width: 1500px;
     height: 800px;
     text-align:center;
     margin:0 auto;
     margin-top:30px;

}
.list {
	text-align:center;
    border-spacing: 0;
    padding: 0;
    margin: 0;
    border-collapse: collapse;
    border: 0;
    empty-cells: show;
    width:1400px;
    margin-left:50px;
}
.list thead th {
    padding: 12px 0;
    border-top: solid 1px #111;
    border-bottom: solid 1px #ccc;
    border-right: solid 1px #ccc;
    font-weight: bold;
    font-size: 15px;
    color: #111;
}
.list tbody th,
.list tbody td {
    padding: 12px 0;
    border-bottom: solid 1px #ccc;
    border-right: solid 1px #ccc;
    font-size: 14px;
    color: #444;
}

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

<div class="board">
  <table class="list">
    <thead>
      <tr>
      	<th>NO</th>
        <th>ITEM</th>
        <th>SUBJECT</th>
        <th>WRITE</th>
        <th>DATE</th>
      </tr>
    </thead>
    <c:set var="nowNum" value="${cnt}"/>
     <c:forEach var="board" begin="0" end="${nowNum}" items="${boardVO }" varStatus="status" step="1"> 
    <c:set var="i" value="${status.count}"/>
    <tbody>
      <tr>
      	<td>${nowNum-i+1}</td>
        <c:if test="${num == 1 || num ==2 || num ==3 || num ==4 || num == 5 || num == 7 }">
        <td>　</td>
        </c:if>
        <c:if test="${num == 6 }">
        <td>
        <img src="<%=request.getContextPath()%>/images/menuimage/${board.selectimage}" height="50" width="50">
       	${board.selectname}
        </td>
        </c:if>
        <td>
        <c:if test="${board.secret == 1}">
        <c:set var="login" value="${login}" />
        <c:if test="${login == board.writer}">
        <a href="<%=request.getContextPath()%>/board_read/${num}/${board.num}"><span style="color:red">[본인비밀글]${board.subject}</span></a>
        <img src="<%=request.getContextPath()%>/images/icon_lock.gif">
        </c:if>
        <c:if test="${login != board.writer}">
        <span style="color:blue">[다른 사람의 비밀글]</span>
        <img src="<%=request.getContextPath()%>/images/icon_lock.gif">
        </c:if>
       </c:if>
        <c:if test="${board.secret == 0 }">
         <a href="<%=request.getContextPath()%>/board_read/${num}/${board.num}"><span style="color:blue">[공개글]${board.subject}</span></a>
        </c:if>
        </td>
        <td>${board.writer}</td>
        <td>${board.regdate}</td>
      </tr>
    </tbody>
    </c:forEach>
  </table>
	<a href="javascript:btn_write()"><img src="<%=request.getContextPath()%>/images/btn_write.png" align="right" style="margin-right:50px"></a>
</div>

<!-- footer -->
<div class="footer"><img src="<%=request.getContextPath()%>/images/footer.jpg"></div>
</body>
<script>
function btn_write() {
	var login = "<%=(String)session.getAttribute("login")%>"
	if( login == "null"){ 
		alert("로그인을 해주세요.");
		location.href = "<%=request.getContextPath()%>/login/login";
	}else{
		location.href = "<%=request.getContextPath()%>/board_write/${num}";
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