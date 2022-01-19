<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
		border-radius:7px;
		}
		.a button {background-color:#C35F5F;
				   border:1px solid #B93C3C;}
		.b button {background-color:#3296D7;
				   border:1px solid #1E82CD;}
				   
		.div-style {
		width:1000px;
		height:30px;
		text-align:center;
		background-color:#2AB394;
		color:white;
		font:bold 20px Arial;
		margin:4px 2px;
		border-radius:10px;
		display:inline-block;
		padding:7px;
		}
		
		body {
		position: absolute;
		left:50%;
		top:30%;
		transform:translate(-50%, -50%);
		}
		
	</style>
	
	<body>
		<%
		int a = 0;
		int b = 1;
		int number=0;

		String s_round = request.getParameter("round");
		int round = Integer.parseInt(round);
		int[] arrRound = new int[round];
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
		%>
		<script type="text/javascript">
		function nextLeft() {
			arrRound[number] = song[a];
			number++;
			a += 2;
			b += 2;
			document.getElementById("left").scr = song[a];
			document.getElementById("right").scr = song[b];
		}
		function nextRight() {
			arrRound[number] = song[a];
			number++;
			a += 2;
			b += 2;
			document.getElementById("left").scr = song[a];
			document.getElementById("right").scr = song[b];
		}
		</script>
		
		<div class="div-style">
			노래 이상형 월드컵 <%= round %> 강
		</div>
		<%
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