<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 이상형 월드컵</title>
</head>

<style>
.btn button {
color:white;
width:500px;
height:30px;
text-align:center;
display:inline-block;
font-size:16px;
margin:4px 2px;
}
.a button {background-color:#46BD7B;
		   border:1px solid #91D0D2;}
.b button {background-color:#6464FF;
		   border:1px solid #AD9AEE;}
		   
.div-style {
width:1000px;
height:30px;
text-align:center;
color:#646464;
font:bold 20px Arial;
margin:4px 2px;
display:inline-block;
padding:7px;
}
</style>

<body>
<div class="div-style">
노래 이상형 월드컵
</div>
<form method="post">
<table>
<tr>
<td>
<embed src="https://www.youtube.com/embed/sqgxcCjD04s" width="500" height="300">
</td>
<td>
<embed src="https://www.youtube.com/embed/R78C57LXd2E" width="500" height="300">
</td>
</tr>
<tr>
<td>
<div class = "btn a">
<button type="button" id="lbtn">선택</button>
</div>
</td>
<td>
<div class = "btn b">
<button tpye="button" id="rbtn">선택</button>
</div>
</td>
</table>
</form>
</body>
</html>