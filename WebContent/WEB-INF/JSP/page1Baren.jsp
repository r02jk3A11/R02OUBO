<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/page1_baren.css">
</head>
<body>
<a href="./Page1Multi">複数入力の場合はこちら</a>
	<h1>💕仙台駅前第一デパート　バレンタインセール抽選会 受付会場💕</h1>
	<%
		String diff = (String) request.getAttribute("sDiff");
	String error = (String) request.getAttribute("Error");
	%>
	<%
		if (diff != null) {
	%>
	<%
		int iDiff = Integer.parseInt(diff);
	%>
	
	<%
		if (iDiff <= 10 && iDiff > 0) {
	%>
	応募期限まで<%=iDiff%>日
	<%
		}
	%>
	<%
		}
	%>

	<%
		if (error != null && error.equals("Same")) {
	%>

	<p>既に存在している数字の組み合わせが入力されたので再入力をしてください</p>
	<%
		} else if (error != null && error.equals("Num")) {
	%>
	<p>Aが不正な形式です</p>
	<%
		}
	%>
	<form method="post" action="./Page2Check">
		応募者のメールアドレス<input type="email" name="email" placeholder="メールアドレスを入力" /><br />
		7桁の数字A<input type="number" name="numa" placeholder="7桁の数字A" /><br />
		7桁の数字B<input type="number" name="numb" placeholder="7桁の数字B" /><br />
		<input type="submit" value="登録する" />
	</form>
<a href="./index">クリスマスセール</a><br/>
<a href="./Page1Sin">新入学セール</a><br/>

</body>
</html>