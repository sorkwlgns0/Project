<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="utf-8">
</head>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<body>
<script> 
window.name ="Parent_window"; 

function fnPopup(){ 
window.open('', 'popupChk','width=500, height=550'); 
document.form_chk.action = "팝업창 페이지"; 
document.form_chk.target = "popupChk"; 
document.form_chk.submit(); 
} 
</script> 
<form name="form_chk" method="post"> 
<input type="hidden" name="m" value="xxx">
</form> 
</body>
</html>
