<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<%
    String bno = request.getParameter("bno");
	
%>
<script>

var bno = <%=bno%>; //게시글 번호

$('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 

	var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});

//댓글 목록 
function commentList(){
    $.ajax({
        url : '/TeamProject/comment/list/',
        type : 'get',
        data : {'bno':bno},
        success : function(data){
        	var login = "<%=(String)session.getAttribute("login")%>"
            var a =''; 
            $.each(data, function(key, value){ 
            	console.log(login);
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.cno+'" style="color:#adb5bd;">'+'작성자 : '+value.writer;
                if(value.writer==login){
                a += '<button onclick="commentUpdate('+value.cno+',\''+value.content+'\');" style="margin-left:50px;">수정</button>';
                a += '<button onclick="commentDelete('+value.cno+');" style="margin-left:5px;">삭제 </a>';
                }
                a += ' </div><br><div class="commentContent'+value.cno+'"> <p style="color:#adb5bd;"> 내용 : '+value.content +'</p>';
                a += '</div></div>';
       
            });
            $(".commentList").html(a);
        }
    });
}
 
//댓글 등록
function commentInsert(insertData){
    $.ajax({
        url : '/TeamProject/comment/insert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                commentList(); //댓글 작성 후 댓글 목록 reload
                $('[name=content]').val('');
            }
        }
    });
}
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(cno, content){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+cno+'" value="'+content+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+cno).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(cno){
    var updateContent = $('[name=content_'+cno+']').val();
    
    $.ajax({
        url : '/TeamProject/comment/update',
        type : 'post',
        data : {'content' : updateContent, 'cno' : cno},
        success : function(data){
            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function commentDelete(cno){
    $.ajax({
        url : '/TeamProject/comment/delete/'+cno,
        type : 'post',
        success : function(data){
            if(data == 1) commentList(bno); //댓글 삭제후 목록 출력 
        }
    });
}

$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});

</script>
<body>
</body>
</html>
