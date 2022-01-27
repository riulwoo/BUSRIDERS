<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>연습할려고 복사해둔거</title>
	</head>
	<link href="./css/bchy.css" rel="stylesheet">
	
	<body>
		<%
		int a = 0; //왼쪽 버튼 선택 시 왼쪽 영상이 배열에 들어갈 수 있도록 하는 변수
		int b = 1; //오른쪽 버튼 선택
		
		String s_round;
		String round = request.getParameter("round");
		application.setAttribute("s_round", round);
		
		//Integer i_round = (Integer)application.getAttribute("s_round");
		
		//노래 유튜브 주소

		String[] song = {"https://www.youtube.com/embed/sqgxcCjD04s","https://www.youtube.com/embed/R78C57LXd2E",
				"https://www.youtube.com/embed/FT1pDacyuVk","https://www.youtube.com/embed/rgms0zs6SZc","https://www.youtube.com/embed/H2ncCtw2YxA",
				"https://www.youtube.com/embed/yQ7X3mUl_F0","https://www.youtube.com/embed/3laLavGghc0","https://www.youtube.com/embed/3eKFF4cCBaY",
				"https://www.youtube.com/embed/n8iOhuv05As","https://www.youtube.com/embed/SK6Sm2Ki9tI","https://www.youtube.com/embed/WPdWvnAAurg",
				"https://www.youtube.com/embed/yU05gNCDeVE","https://www.youtube.com/embed/Uz0PppyT7Cc","https://www.youtube.com/embed/X3PFu82F_S8",
				"https://www.youtube.com/embed/RmuL-BPFi2Q","https://www.youtube.com/embed/v7bnOxV4jAc","https://www.youtube.com/embed/eUVwTjyi9n4",
				"https://www.youtube.com/embed/i7cSojnHbBw","https://www.youtube.com/embed/TgOu00Mf3kI","https://www.youtube.com/embed/NJR8Inf77Ac",
				"https://www.youtube.com/embed/TqIAndOnd74","https://www.youtube.com/embed/iOKRYIMhaDk","https://www.youtube.com/embed/0-q1KafFCLU",
				"https://www.youtube.com/embed/-_7HwAXKycU","https://www.youtube.com/embed/y59fHpNjTxI","https://www.youtube.com/embed/ArMWbOglay8",
				"https://www.youtube.com/embed/cHG7JZjL6Zc","https://www.youtube.com/embed/bmivgWKzGkM","https://www.youtube.com/embed/ENHQjGSK2T0",
				"https://www.youtube.com/embed/rUwVCFBk61s","https://www.youtube.com/embed/bepF3wff4GE","https://www.youtube.com/embed/SKs72A3PANQ",
				"https://www.youtube.com/embed/moETFD_H8EE","https://www.youtube.com/embed/LCBsfLaJl-A","https://www.youtube.com/embed/IgPcbE--mMA",
				"https://www.youtube.com/embed/m3DZsBw5bnE","https://www.youtube.com/embed/wEQpfil0IYA","https://www.youtube.com/embed/1q_t6RNuH8c",
				"https://www.youtube.com/embed/YlY2euBAZfM","https://www.youtube.com/embed/HzOjwL7IP_o","https://www.youtube.com/embed/D1PvIWdJ8xo",
				"https://www.youtube.com/embed/j1xkYT9nxHU","https://www.youtube.com/embed/udGwca1HBM4","https://www.youtube.com/embed/-5q5mZbe3V8",
				"https://www.youtube.com/embed/mOo8bVzN9M8","https://www.youtube.com/embed/7tkbzxa8MFQ","https://www.youtube.com/embed/mLCsbacHxA8",
				"https://www.youtube.com/embed/x7l0kLFN6Oc","https://www.youtube.com/embed/TUo_XGiPmvI","https://www.youtube.com/embed/tg2uF3R_Ozo",
				"https://www.youtube.com/embed/c9RzZpV460k","https://www.youtube.com/embed/IECYwwoAg44","https://www.youtube.com/embed/Z8E0apklL2w",
				"https://www.youtube.com/embed/cQuqs2LrXbo","https://www.youtube.com/embed/2COAu1l6hUQ","https://www.youtube.com/embed/sCmcSBsTxQc",
				"https://www.youtube.com/embed/lNvBbh5jDcA","https://www.youtube.com/embed/R3Fwdnij49o","https://www.youtube.com/embed/Wj7tpcw_LRI",
				"https://www.youtube.com/embed/o1MtOu0Z4Hg","https://www.youtube.com/embed/0tkgGcnRNTE","https://www.youtube.com/embed/F4K1mMDlsj0",
				"https://www.youtube.com/embed/KCpWMEsiN3Q","https://www.youtube.com/embed/VpaUh_BGqE0"};
		
		//자바스크립트에 배열 사용하기 위한 코드
		String str = "";
		for(int i = 0; i<song.length; i++){
			if(i==0)
				str = "" + song[i] + "";
			else
				str = "," + song[i] + "";
		}
		%>
		
		<script type="text/javascript">
		//jsp변수 사용을 위한 코드
		var i = "<%=a%>";
		var j = "<%=b%>";
		var i_round = "<%=application.getAttribute("s_round")%>";
		var number = 0;
		var songs = [<%=str%>];
		var arrRound = new Array(parseInt(i_round));
		
		//왼쪽 버튼 클릭
		function nextLeft() {
			arrRound[number] = songs[i]; //다음 토너먼트를 위해 선택된 노래 변수에 저장
			number++;

			a += 2;
			b += 2;
			document.getElementById("left") = song[a];
			document.getElementById("right") = song[b];

			i += 2;
			j += 2;
			document.getElementById("left") = songs[i];
			document.getElementById("right") = songs[j];

		}
		//오른쪽 버튼 클릭
		function nextRight() {
			arrRound[number] = songs[j];
			number++;
			i += 2;
			j += 2;
			document.getElementById("left") = songs[i];
			document.getElementById("right") = songs[j];
		}
		</script>
		
		<div id="main" class="div-style">
			노래 이상형 월드컵 <%=application.getAttribute("s_round")%> 강
		</div>
		<%
		//랜덤으로 노래 영상이 나올 수 있게 0~63까지 배열에 랜덤 저장
		int num[] = new int[64];
		int selectNum = 0;
		boolean flag = false;
		
		for(int i=0; i<num.length; i++){
			do{
				selectNum = (int)(Math.random()*64)+1;
				for(int j=0; j<i; j++){
					if(selectNum == num[j]){
						flag = true;
						break;
					}
					flag = false;
				}
			}while(flag);
			num[i] = selectNum;
		}
		%>
		
		<form method="post">
			<table>
			<tr>
				<td>
					<!-- 배열에서 랜덤으로 유튜브 주소 가져오기 -->
					<embed src="<%=song[num[a]]%>" id="left" width="500" height="300">
				</td>
				
				<td>
					<embed src="<%=song[num[b]]%>" id="rigth" width="500" height="300">
				</td>
			</tr>
			
			<tr>
				<td>
					<div class = "btn a">
					<button onclick="nextLeft()" id="lbtn">선택</button>
					</div>
				</td>
				
				<td>
					<div class = "btn b">
					<button onclick="nextRight()" id="rbtn">선택</button>
					</div>
				</td>
			</tr>
			</table>
		</form>
	</body>
</html>