<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 월드컵</title>
</head>
<link href="./css/kkk.css" rel="stylesheet">

<body>

	<header>
		<form action="index.jsp" method="post">
			<input class="head" type="submit" value="Team Busriders">
		</form>
	</header>

	<h1>최종결과</h1>

	<center>
		<%String song = application.getAttribute("")%>
	</center>
	
	<form action="index.jsp" method="post">
		<input class="submit" type="submit" value="다시하기">
	</form>

</body>
</html>
