<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script> 
$(function () {

	$("button#btn1").click(function () {
		$.ajax({
			url: '/idCheck', //이 주소로 호출시 보낸 값이 돌아옴
			data: {
				data: "<div>'난 DIV 다!'</div>", //보내고 받을 데이터 html 내용
				delay: 2 //일부러 2초 지연 설정 (로딩중 길게 볼려고)
			},
			success: function (result) {
				$("#div1").html(result);
			}
		});
	});

	$("button#btn2").click(function () {
		$("#div1").html('로딩중...');
		$.ajax({
			url: "/echo.php",
			data: {
				data: [1, 2, 3, 4], //array data
			}, //delay 없음
			success: function (result) {
				var obj = JSON.parse(result); //Array나 Object 데이터는 json 파싱
				$("#div1").html(obj[0]); //배열의 첫번째 값 표시 (1)
				console.log(obj);
			}
		});
	});

	$("button#btn3").click(function () {
		$("#div1").html('로딩중...');
		$.ajax({
			url: "/echo.php",
			data: {
				data: { //object (JSON) data
					'msg': "SUCCESS",
					'list': {
						'id': 1,
						'key': 1
					}
				},
				delay: 1 //1초 지연
			},
			success: function (result) {
				var obj = JSON.parse(result);
				$("#div1").html(obj.msg); //object.msg 값 표시
				console.log(obj); //object가 잘 돌아왔는지 로그 찍어보기
			}
		});
	});

});
</script>

<body>

<div id="div1">
	AJAX 호출 후 리턴된 값으로 이곳 내용 바꾸기!
</div>

<button id="btn1">HTML 로드!</button>
<button id="btn2">Array 로드!</button>
<button id="btn3">Object 로드!</button>

<br />
<br /> 받고자 하는 내용을 data:{data:{ ... }} 에 담아 "/echo.php" 로 보낸 후 돌려 받는 방법으로 ajax 호출 테스트도 가능합니다.
<br> (주의: dataType:'json' 지정 시 var obj = JSON.parse(result); 줄을 제거해야 함)
<br />
<br /> 자세한 내용은 javascript 소스의 주석 참고
<br /> (편의상 jQuery 를 이용하였습니다.)
</body>
