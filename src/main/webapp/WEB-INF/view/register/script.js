function idCheck(id){
	if(id == ""){
		alert("아이디를 입력해주세요.");
		document.step1.id.focus();
	}
	else {
		var popWidth = 300;
		var popHeight = 200;
		var winHeight = document.body.clientHeight;
		var winWidth= document.body.clientWidth;
		var winX = window.screenLeft;
		var winY = window.screenTop;
		var popX = winX + (winWidth + popWidth) /2;
		var popY = winY + (winHeight + popHeight) /2;
		url = "idCheck?id="+id;
		window.open(url, "post", "left="+popX+",top="+popY+",width="+popWidth+", height="+popHeight);
	}
}