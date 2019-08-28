<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
</head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<body>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
 
function point(val){
    var point1 = parseInt(val);
    var interest = 135;
    
    if(val > interest){
    	$('font[name=check]').html("사용불가능.");
    }else{
    	$('font[name=check]').html("사용가능.");
    }
}
 
</script>
</head>
<body>
    원금 : <input type="text" id="point1" onkeyup="point(this.value)"/>
    <font name="check" size="2" color="red"></font> 
</body>
</html>


