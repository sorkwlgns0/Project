<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function alert(){
if (confirm("정말 삭제하시겠습니까??") == true){    //확인
    document.form.submit();
}else{   //취소
    return;
}
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
</head>
 <style>
body {
margin:0;
padding: 0;
box-sizing: border-box;
width:100%;
}
h1 {
padding: 50px 0;
font-weight: 400;
text-align: center;}
p {
margin: 0 0 20px;
line-height: 1.5;}
.main {
min-width: 1400px;
max-width: 1400px;
padding: 50px;
margin: 0 auto;
background: #ffffff;
font-size:15px;
}

section {
display: none;
border-top: 1px solid #ddd;}
/*라디오버튼 숨김*/
input {
display: none;}
label {
display: inline-block;
margin: 0 0 -1px;
padding: 15px 25px;
font-weight: 600;
text-align: center;
color: #bbb;
border: 1px solid transparent;}
label:hover {
color: #2e9cdf;
cursor: pointer;}

/*input 클릭시, label 스타일*/
input:checked + label {
color:#F5A9D0;
border: 1px solid #ddd;
border-top: 2px solid #2e9cdf;
border-bottom: 1px solid #ffffff;
}
#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3{
display: block;}
.update{
text-align: center;
padding:10px;
width:100%;
margin-top:50px;
}
.content{
text-align:center;
align:center;
width:100%;
}
.content.table{
display: inline-block;
width:100%;
border: 1px solid width;
height:400px;
}
#ssz
{
display:inline-block;
height:30px;
text-align:center;	
}
.buy{
width:60%;
border: 1px solid width;
margin-left:250px;
margin-top:50px;
}
.im{
display:inline-block;
height:30px;
text-align:center;	
}
</style>
<body>
<%@ include file ="/WEB-INF/view/main_top.jsp" %>

<div class="main">
<div class="content">
	<div class="content table">
    <input id="tab1" type="radio" name="tabs" checked> <!--디폴트 메뉴-->
    <label for="tab1"><i class='fas fa-cart-arrow-down' style='font-size:15px'></i>　구매리스트</label>
    <input id="tab2" type="radio" name="tabs">
    <label for="tab2"><i class='far fa-address-card' style='font-size:15px'></i>　회원리스트</label>
    <input id="tab3" type="radio" name="tabs">
    <label for="tab3"><i class='fas fa-file-alt' style='font-size:15px'></i>　물품등록</label>
    <!-- 구매 리스트 -->
    <section id="content1">
        <div class="update" style="font-size:13px; padding:10px;">
		<table class="table table-bordered" style="border-left:none; border-right:none;">
    		<tbody>
            <tr>
            <th style="background-color:#FBEFEF; border-left:none; border-right:none;" colspan="9">
            <i class='fas fa-exclamation-circle' style='font-size:12px;color:red;'></i>
            <span style="color:red; font-size:12px;"> 구매 리스트입니다.</span>
            </th>
            </tr>
            <tr>
            <th style="background-color:#F2F2F2;" colspan="9" height="30">국내배송 주문내역
            <input  TYPE="IMAGE" src="<%=request.getContextPath()%>/images/btn_prev.gif" class="pull-right" onclick="history.go(-1); return false">
            </th>
            </tr>
            <tr style="background-color:#FAFAFA;">
            <th>이미지</th>
            <th width="150">상품정보</th>
            <th>주소</th>
            <th width="60">판매가</th>
            <th width="50">수량</th>
            <th width="60">사이즈</th>
            <th width="100">포인트</th>
            <th width="100">현재상태</th>
            <th width="60">합 계</th>
            </tr>
           <c:forEach var="buy" items="${totalbuyList }" varStatus="status">
            <c:if test="${buy.status == 0 }">
            <form action="<%=request.getContextPath()%>/status/${buy.buynum }" method="post" name="hoho">
            <tr>
            <td valign="middle"><img src="<%=request.getContextPath()%>/images/menuimage/${buy.image}" width="60" height="70"> 
            <td width="150" style="line-height:70px;" valign="middle">${buy.buyname}</td>
            <td valign="middle" style="line-height:70px;">${buy.address}</td>
            <td width="60" valign="middle" style="line-height:70px;">${buy.price}</td>
            <td width="50" valign="middle" style="line-height:70px;">${buy.amount}</td>
            <td width="60" valign="middle" style="line-height:70px;">${buy.sizee}</td>
            <td width="100" valign="middle" style="line-height:70px;">${buy.price / 100} 적립</td>
            <!-- 데이터베이스 숫자로 가져와서 0이면 배송준비중(배송완료 버튼 누를시 -> 1)  1이면 배송완료 -->
            <td width="100" valign="middle" style="line-height:70px;"><c:if test="${buy.status == 0 }">배송준비중
            <div>
			<input type="submit" value="배송완료" id="ssz">
			</div></c:if>
            <c:if test="${buy.status == 1 }">
           	배송완료
			</c:if>
           </td>
			</form>
			
            <td width="60" valign="middle" style="line-height:70px;">합 계
            <form action="<%=request.getContextPath() %>/deleteBuy/${buy.buynum}" method="post" name="haha">
			<div>
			<input type="submit" value="구매취소" id="ssz">
			</div>
			</form>
            </td>
            </tr>
			</c:if>
            </c:forEach>
            <tr>
            <th style="background-color:#FBEFEF; border-left:none; border-right:none;" colspan="9">
            <i class='fas fa-exclamation-circle' style='font-size:12px;color:red;'></i>
            <span style="color:red; font-size:12px;"> 구매 리스트입니다.</span>
            </th>
            </tr>
            </tbody>
        </table>
	</div>
    </section>
    <section id="content2">
    <!-- 회원 목록 리스트 -->
        <div class="update" style="font-size:13px; padding:10px;">
		<table class="table table-bordered" style="border-left:none; border-right:none;">
    		<tbody>
            <tr>
            <th style="background-color:#FBEFEF; border-left:none; border-right:none;" colspan="10">
            <i class='fas fa-exclamation-circle' style='font-size:12px;color:red;'></i>
            <span style="color:red; font-size:12px;"> 회원 리스트입니다.</span>
            </th>
            </tr>
            <tr>
            <th style="background-color:#F2F2F2;" colspan="10" height="30">전체 회원 목록
            </th>
            </tr>
            <tr style="background-color:#FAFAFA;">
            <th width="100">아이디</th>
            <th width="100">이름</th>
            <th width="350">주소</th>
            <th width="60">폰번호</th>
            <th width="50">이메일</th>
            <th width="60">포인트</th>
            <th width="100">총구매가격</th>
            <th width="100">생일</th>
            <th>등급</th>
            <th>비고</th>
            </tr>
            <c:forEach var="member" items="${searchMember }" varStatus="status">
            <tr>
            <td width="100">${member.id }</td>
            <td width="100" valign="middle">${member.name}</td>
            <td>${member.address}</td>
            <td width="60">${member.mobile}</td>
            <td width="50">${member.email}</td>
            <td width="60">${member.point}</td>
            <td width="100">${member.howmuch }</td>
            <td width="100">${member.birth}</td>
            <td>
            
           	<c:choose>
           	<c:when test="${member.id =='admin' }">
           	<div style="display:inline-block; color:#DBA901; font-weight:bold">관리자</div>
           	</c:when>
			<c:when test="${member.howmuch >= 0 && member.howmuch <= 100000}">브론즈</c:when>
			<c:when test="${member.howmuch > 100000 && member.howmuch <= 200000}">
			<div style="display:inline-block; color:#FFD700; font-weight:bold">골드</div>
			</c:when>
			<c:when test="${member.howmuch > 200000 && member.howmuch <= 300000}">
			<div style="display:inline-block; color:#C0C0C0; font-weight:bold">다이아</div>
			</c:when>
			<c:when test="${member.howmuch > 300000}">
			<div style="display:inline-block; color:#660099; font-weight:bold">VIP</div>
			</c:when>
           	</c:choose>
           	</td>
           	<td><c:if test="${member.id != 'admin'}"><div><form action="<%=request.getContextPath()%>/admin/deleteMember/${member.seq}" method="post" id="delete" name="delete">
			<input type="submit" style="height:22px" value="강제회원탈퇴" onclick="alert(); return false" id="ssz">
			</form></div></c:if></td>
            </tr>
            </c:forEach>
            <tr>
            <th style="background-color:#FBEFEF; border-left:none; border-right:none;" colspan="10">
            <i class='fas fa-exclamation-circle' style='font-size:12px;color:red;'></i>
            <span style="color:red; font-size:12px;"> 회원 리스트입니다.</span>
            </th>
            </tr>
            </tbody>
        </table>
	</div>
    </section>
    <section id="content3">
    <div class="update" style="font-size:13px; padding:10px;">
    <div class="buy">
        <form action="<c:url value="/menu/add" />" method="POST" enctype="multipart/form-data" >
        <table class="table table-bordered">
            <tr>
                <th><i class='fas fa-cart-arrow-down' style='font-size:13px'></i> 제품명</th>
                <td><input type="text" class="form-control" style="float:left; width:400px" name="name" placeholder="물품 이름 입력"/></td>
            </tr>
            <tr>
                <th><i class='fas fa-won-sign' style='font-size:13px'></i> 가격</th>
                <td><input type="text" class="form-control" style="float:left; width:400px" name="price" placeholder="가격 입력"/>
       			</td>
            </tr>
            <tr>
                <th><i class='fas fa-won-sign' style='font-size:13px'></i> 세일적용</th>
                <td><input type="text" class="form-control" style="float:left; width:400px" name="sale" placeholder="세일 가격 입력 %로 적용"/>
       			</td>
            </tr>
            <tr>
                <th><i class='fas fa-boxes' style='font-size:14px'></i> 수량</th>
                <td><input type="text" class="form-control" style="float:left; width:400px" name="stocks" placeholder="남은 수량 입력"/></td>
            </tr>
            <tr>
                <th><i class='fas fa-archive' style='font-size:13px'></i> 분류</th>
                <td>
                <select class="form-control" name="category">
                <option value="2">상의</option>
                <option value="3">하의</option>
                <option value="4">가방 & 신발</option>
           	    </select>
                </td>
            </tr>
            <tr>
                <th><i class='fas fa-vector-square' style='font-size:13px'></i> 사이즈</th>
                <td>
                <select class="form-control" name="sizee">
                <option value="90">90</option>
                <option value="95">95</option>
                <option value="100">100</option>
                <option value="105">105</option>
                <option value="110">110</option>
                </select>
                </td>
            </tr>
            <tr>
            <th>내용</th>
            <td><textarea name="cmt" class="form-control" rows="5"></textarea></td>
            <tr>
                <th><i class='fas fa-upload' style='font-size:13px'></i> 이미지</th>
                <td><input type="file" name="filename"></td>
            </tr>
        </table>
            <input type="submit" value="등록" id="ssz">
    </form>
    </div>
    </div>
    </section>
</div>
</div>
</div>
</body>
</html>