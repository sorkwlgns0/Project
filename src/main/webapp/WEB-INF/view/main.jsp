<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Skitter JS -->
  <script type="text/javascript"  src="js/jquery-2.1.1.min.js"></script>
  <script type="text/javascript"  src="js/jquery.easing.1.3.js"></script>
  <script type="text/javascript"  src="js/jquery.skitter.min.js"></script>

  <!-- Skitter Styles -->
  <link href="css/skitter.styles.min.css" type="text/css" media="all" rel="stylesheet" />
  <link href="css/top.css" type="text/css" rel="stylesheet" />
  <link href="css/main.css" type="text/css" rel="stylesheet" />
  
<style>
* {
  margin: 0px;
  padding: 0px;
}

ul,
ol,
li {
  list-style: none;
}

a {
  text-decoration: none;
}

img {
  vertical-align: top;
  border: none;
}

.slide {
  position: relative;
  padding-top: 50px;
  overflow: hidden;
  height:1300px;
  left:15px;
}

.panel {
  width: 400%;
  height:1300px;
}

.panel:after {
  content: "";
  display: block;
  clear: both;
}

.panel>li {
  width: 25%;
  height: 200px;
  float: left;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  position: relative;
}

.dot:after {
  content: "";
  display: block;
  clear: both;
}



.prev {
  position: absolute;
  width: 44px;
  height: 33px;
  background-image: url( "images/btn_slider2.png" );
  top: 49%;
  transform: translateY(-50%);
  left: 50px;
  cursor: pointer;
}

.next {
  position: absolute;
  width: 44px;
  height: 33px;
  background-image: url( "images/btn_slider1.png" );
  top: 49%;
  transform: translateY(-50%);
  right: 129px;
  cursor: pointer;
}
</style>
</head>
<body>

 <%@ include file ="/WEB-INF/view/main_top.jsp" %>


<!-- 내용 -->
     <div class="content" id="content">
     <div class="slideshow-container">
        <div class="box_skitter box_skitter_large">
          <ul>
            <li><a href="#cube"><img src="images/m_1.jpg" class="circles" /></a><div class="label_text"><p>cube</p></div></li>
            <li><a href="#cubeRandom"><img src="images/m_2.jpg" class="circlesInside" /></a><div class="label_text"><p>cubeRandom</p></div></li>
            <li><a href="#block"><img src="images/m_3.jpg" class="circlesRotate" /></a><div class="label_text"><p>block</p></div></li>
         </ul>
    </div>
    </div>
  </div>
  <br>
  <div class="center-main">
	<div class="center-main left">
		<div class="center-main left image1">
		<img src="images/mc_1.png"></div>
		<div class="center-main left image1">
		<img src="images/mc_2.png"></div>
		<div class="center-main left image1">
		<img src="images/mc_3.jpg"></div>
		<div class="center-main left image1">
		<img src="images/mc_4.gif"></div>
	</div>
	
	<div class="center-main right">
	<img src="images/mc_5.gif"></div>
  </div>

<br><br>


<div class="slide">
  <ul class="panel">
    <li><div class="center-body">
<img src="images/best_bar.png" style="margin-right:70px">
<table border="0"> 
<c:set var="i" value="0" /> 
<c:set var="j" value="5" /> 
<c:forEach var="item" items="${shoppingList }" varStatus="loop" end="9"> 
<c:if test="${i%j == 0 }"> 
<tr> 
</c:if> 
<td>
	<div class="wrap effect8">
		<img src="images/${item.image}" width="100%">
		<img src="images/best_icon.png" ><br>
		<div class="name">
		${item.name}</div>
		<div class="price">
		${item.price}원
		</div>
	</div>
&nbsp;&nbsp;&nbsp;&nbsp;
</td> 
<c:if test="${i%j == j-1 }"> 
</tr> 

</c:if> 
<c:set var="i" value="${i+1 }" /> 
</c:forEach> 
</table>
 <a href="best_list"><img src="images/more.png" style="margin-right:70px"></a>
</div></li>
    <li><div class="center-body">
<img src="images/newitembar.png" style="margin-right:70px">
<table border="0"> 
<c:set var="i" value="0" /> 
<c:set var="j" value="5" /> 
<c:forEach var="item" items="${shoppingList }" varStatus="loop" end="9"> 
<c:if test="${i%j == 0 }"> 
<tr> 
</c:if> 
<td>
	<div class="wrap effect8">
		<img src="images/${item.image}" width="100%">
		<img src="images/new_icon.png" ><br>
		<div class="name">
		${item.name}</div>
		<div class="price">
		${item.price}원
		</div>
	</div>
&nbsp;&nbsp;&nbsp;&nbsp;
</td> 
<c:if test="${i%j == j-1 }"> 
</tr> 

</c:if> 
<c:set var="i" value="${i+1 }" /> 
</c:forEach> 
</table>
 <a href="new_list"><img src="images/more.png" style="margin-right:70px"></a>
</div></li>

    <li><div class="center-body">
<img src="images/saleitem.png" style="margin-right:70px">
<table border="0"> 
<c:set var="i" value="0" /> 
<c:set var="j" value="5" /> 
<c:forEach var="item" items="${shoppingList }" varStatus="loop" end="9"> 
<c:if test="${i%j == 0 }"> 
<tr> 
</c:if> 
<td>
	<div class="wrap effect8">
		<img src="images/${item.image}" width="100%">
		<img src="images/sale_icon.png" ><br>
		<div class="name">
		${item.name}</div>
		<div class="price">
		${item.price}원
		</div>
	</div>
&nbsp;&nbsp;&nbsp;&nbsp;
</td> 
<c:if test="${i%j == j-1 }"> 
</tr> 

</c:if> 
<c:set var="i" value="${i+1 }" /> 
</c:forEach> 
</table>
 <a href="sale_list"><img src="images/more.png" style="margin-right:70px"></a>
</div></li>
  </ul>
  <ul class="dot">
    <li class="on"></li>
    <li></li>
    <li></li>
  </ul>
  <div class="prev">　</div>
  <div class="next">　</div>
</div>

<!-- footer -->

<div class="footer"><img src="images/footer.jpg"></div>
<script>

//탑 메뉴

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
  if (window.pageYOffset > sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}


//베스트 상품 슬라이드

$(document).ready(function() {
	  slide();
	});


	// 슬라이드 
	function slide() {
	  var wid = 0;
	  var now_num = 0;
	  var slide_length = 0;
	  var auto = null;
	  var $dotli = $('.dot>li');
	  var $panel = $('.panel');
	  var $panelLi = $panel.children('li');

	  // 변수 초기화
	  function init() {
	    wid = $('.slide').width();
	    now_num = $('.dot>li.on').index();
	    slide_length = $dotli.length;
	  }

	  // 이벤트 묶음
	  function slideEvent() {

	    // 슬라이드 하단 dot버튼 클릭했을때
	    $dotli.click(function() {
	      now_num = $(this).index();
	      slideMove();
	    });

	    // 이후 버튼 클릭했을때
	    $('.next').click(function() {
	      nextChkPlay();
	    });

	    // 이전 버튼 클릭했을때
	    $('.prev').click(function() {
	      prevChkPlay();
	    });

	    // 오토플레이
	    autoPlay();

	    // 오토플레이 멈춤
	    autoPlayStop();

	    // 오토플레이 재시작
	    autoPlayRestart();

	    // 화면크기 재설정 되었을때
	    resize();
	  }

	  // 자동실행 함수
	  function autoPlay() {
	    auto = setInterval(function() {
	      nextChkPlay();
	    }, 7000);
	  }

	  // 자동실행 멈춤
	  function autoPlayStop() {
	    $panelLi.mouseenter(function() {
	      clearInterval(auto);
	    });
	  }


	  // 자동실행 멈췄다가 재실행
	  function autoPlayRestart() {
	    $panelLi.mouseleave(function() {
	      auto = setInterval(function() {
	        nextChkPlay();
	      }, 3000);
	    });
	  }

	  // 이전 버튼 클릭시 조건 검사후 슬라이드 무브
	  function prevChkPlay() {
	    if (now_num == 0) {
	      now_num = slide_length - 1;
	    } else {
	      now_num--;
	    }
	    slideMove();
	  }

	  // 이후 버튼 클릭시 조건 검사후 슬라이드 무브
	  function nextChkPlay() {
	    if (now_num == slide_length - 1) {
	      now_num = 0;
	    } else {
	      now_num++;
	    }
	    slideMove();
	  }

	  // 슬라이드 무브
	  function slideMove() {
	    $panel.stop().animate({
	      'margin-left': -wid * now_num
	    });
	    $dotli.removeClass('on');
	    $dotli.eq(now_num).addClass('on');
	  }

	  // 화면크기 조정시 화면 재설정
	  function resize() {
	    $(window).resize(function() {
	      init();
	      $panel.css({
	        'margin-left': -wid * now_num
	      });
	    });
	  }
	  init();
	  slideEvent();
	}

</script>

</body>
</html>