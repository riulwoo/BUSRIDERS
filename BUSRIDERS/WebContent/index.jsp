<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상형 월드컵 결과</title>

<style>
.btn button {
color:white;
width:200px;
height:30px;
text-align:center;
display:inline-block;
font-size:16px;
margin:4px 2px;
}

.btn1 button {
color:white;
width:200px;
height:30px;
text-align:center;
display:inline-block;
font-size:40px;
margin:4px 2px;
}

<!--다시보기 랭킹보기 중앙정렬 -->
.container {
	flex-direction: row;
}

.reset button {background-color:#ff0000;
		   border:1px solid #91D0D2;}
		   
.rank button {background-color:#0000ff;
		   border:1px solid #AD9AEE;}	   
		   
.reference button {background-color:#2ab394;
		   border:0px solid #AD9AEE;
		   width: 400px;
		   height: 60px;
		   outline: 0px;}
		   
.save button {background-color:#3366ff;
		   border:0px solid #AD9AEE;
		   color:white;	
		   width: 420px;
		   height: 30px;
		   outline: 0px;}


header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  
  height: 75px;
  padding: 1rem;
  color: white;
  background: #2ab394;
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

h1, p {
  margin: 0;
}

main {
  padding: 1rem;
  height: 100%;  
}

body {
  padding-top: 75px;
  background: #white;
}

body, html {
  height: 200%;
}

* {
  box-sizing: border-box;
}
</style>
</head>
<body>

<header>
	<div class = "btn1 reference">
<button type="button" id="main"><b>BUS RIDERS</b></button>
	</div>
</header>

<table border = "0" align = "center">

<tr>
<td>
<label><b>닉네임</b></label><br>
<input type="text" name="nick" id="nick" class="form-control" placeholder="1회용 닉네임">
</td>

<td rowspan = "2">
<img src="dog.jpg" width="500"><br>
</td>

<tr>
<td>
<label><b>댓글 달기</b></label></br>
<textarea name="c" id="c" class="form-control" placeholder="메세지를 입력하세요." rows="20" cols = "60"></textarea>
<br><br>
<div class = "save">

<center>
<button type="button" id="save" class="btn btn-primary btn-block"><b>입력완료</b></button>
</center>
</div>
</td>
</tr>

<tr>
<td>

<!-- 빈 칸  -->
</td>

<td>

<center>
<div class = "btn reset">
<button type="button" id="reset"><b>다시하기</b></button>

<div class = "btn rank cen">
<button type="button" id="rank"><b>랭킹보기</b></button>
</div>
</div>
</center>
</td>
</tr>

</table>
<table border = "1" align = "center">



</table>
</body>
</html>