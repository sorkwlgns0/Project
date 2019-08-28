<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
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
</style>
<script>

function deleteCheck(){ 
	if (confirm("정말로 취소하시겠습니까?")){ 
		location.href = "<%=request.getContextPath()%>/board_list/${num}";
	}else{ 
	return; 
	} 
} 
function page_href() {
	location.href = "<%=request.getContextPath()%>/board_list/${num}";
	}
function doOpenCheck(chk){
    var obj = document.getElementsByName("secret");
    for(var i=0; i<obj.length; i++){
        if(obj[i] != chk){
            obj[i].checked = false;   
        }
    }
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

</script>
<body>
 <%@ include file ="/WEB-INF/view/main_top.jsp" %>
<div class="bin"></div>
<div class="footer"><img src="<%=request.getContextPath()%>/images/t_qna.png"></div>
<!-- 이미지 -->
<c:choose>
       <c:when test="${num == 1}">
			<div class="footer"><img src="<%=request.getContextPath()%>/images/bo1.png"></div>
       </c:when>
       <c:when test="${num == 2}">
			<div class="footer"><img src="<%=request.getContextPath()%>/images/bo2.png"></div>
       </c:when>
       <c:when test="${num == 3}">
			<div class="footer"><img src="<%=request.getContextPath()%>/images/bo3.png"></div>
       </c:when>
       <c:when test="${num == 4}">
			<div class="footer"><img src="<%=request.getContextPath()%>/images/bo4.png"></div>
       </c:when>
       <c:when test="${num == 5}">
			<div class="footer"><img src="<%=request.getContextPath()%>/images/bo5.png"></div>
       </c:when>
       <c:when test="${num == 6}">

       </c:when>
       <c:when test="${num == 7}">

       </c:when>
       <c:otherwise>
           a, b, c 가 아닌 다른거근영...
       </c:otherwise>
   </c:choose>
<!-- 글쓰기 양식 -->
   <c:choose>
       <c:when test="${num == 1 || num ==2 || num ==3 || num ==4 || num == 5 || num == 6 || num == 7 }">
<div class="container">
    <form name="form" id="form" action="<c:url value="/board_write/${num}" />" method="POST" enctype="multipart/form-data">
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
                <th>제목: </th>
                <td>      
                <select class="form-control" id="subject" name = "subject">
                <c:choose>
                    <c:when test="${num == 1}">
						<option value="입금/결재 문의">입금/결재 문의</option>
       				</c:when>
                    <c:when test="${num == 2}">
						<option value="배송문의">배송문의</option>
       				</c:when>     
       				<c:when test="${num == 3}">
						<option value="배송전 변경/취소">배송전 변경/취소</option>
       				</c:when>
       				<c:when test="${num == 4}">
						<option value="교환/반품">교환/반품</option>
       				</c:when>
       				<c:when test="${num == 5}">
						<option value="상품/기타문의">vip 게시판</option>
       				</c:when>
       				<c:when test="${num == 6}">
						<option value="상품/기타문의">상품/기타문의</option>
       				</c:when>
       				<c:when test="${num == 7}">
						<option value="단체복문의">단체복문의</option>
       				</c:when>  				
                </c:choose>
      			</select>
      			</td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea class="ckeditor" cols="30" rows="20" placeholder="내용을 입력하세요. " name="content" id="content" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="file" placeholder="파일을 선택하세요. " name="image" id="filename" class="form-control-file border"/></td>
            </tr>
				<tr id ="aaa">
                <th>비밀번호: </th>
                <td>
                <input type="password" placeholder="비밀번호를 입력하세요" name="pass" id="pass" class="form-control"/>
                
                <input type="hidden" name="boardno" value="${num}">
                <input type="hidden" name="writer" value="${login}">
                <input type="hidden" name ="selectimage" id ="selectimage" value="">
                <input type="hidden" name="selectname" id="selectname" value="">  
                </td>
            </tr>
            <tr>
            	<th>비밀글 여부</th>
            	<td>
				<div class="form-check-inline">
  					<label class="form-check-label">
    					<input type="radio" class="form-check-input"  id="check" name="secret" value="0" onchange="setDisplay()">공개글
  					</label>
				</div>
				<div class="form-check-inline">
  					<label class="form-check-label">
    					<input type="radio" class="form-check-input"  id="check1" name="secret" value="1" onchange="setDisplay()" checked>비밀글
  					</label>
				</div>
            	</td>
            </tr>
            <tr>
                <td colspan="2">
                	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_cancel.gif" class="pull-right" onclick="deleteCheck(); return false">
                	<input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_register.gif" onclick="write_go(); return false" class="pull-right">
                    <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_list.gif" class="pull-left" onclick="page_href(); return false">
                </td>
            </tr>
         </tbody>
	</table>
    </form>
</div>
       </c:when>
       <c:otherwise>
           a, b, c 가 아닌 다른거근영...
       </c:otherwise>
   </c:choose>
</body>
<script type="text/javascript"> 
function write_go(){
	var ckeditor = CKEDITOR.instances['content']; 
	 var radio = document.getElementsByName("secret");
	 
     //라디오 버튼이 체크되었나 확인하기 위한 변수

     for(var i = 0; i<radio.length; i++){
         //만약 라디오 버튼이 체크가 되어있다면 true
         if(radio[i].checked==true){
             //라디오 버튼 값
             if(radio[i].value == 1){
            		if(document.form.pass.value==""){
            			alert("비밀번호를 입력해 주세요.");
            			document.form.pass.focus();
            			return;
            		}
             }
         }
     }
	if (ckeditor.getData()=="")
	{
	 alert('내용을 입력 하세요');
	 ckeditor.focus();
	 return;
	}
	else {
	 document.in_form.submit();
	}
}
function setDisplay(){
    if($('input:radio[id=check]').is(':checked')){
    	$('#aaa').css("display", "none");
    	$('#aaa').hide();
    	$("#pass").val('');
    }else{
        $('#aaa').show();
    }
}
</script> 
</html>