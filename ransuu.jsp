<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsp0816.*"%>
    <%
	ransuu hl=(ransuu)session.getAttribute("hl");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>1〜100の乱数を生成したよ!</p>
<p>いくつかな？</p>
<form action="/ransuu/main" method="post">
<input type="number" name="userAns" value="<%=hl.getUserAns()%>">
<input type="submit" value="送信">
</form>
<% if (hl.getList().size() >0){ %>
	<p><%=hl.getMsg() %></p>
	<ol>
	<% for(int i:hl.getList()){%>
		<li><%=i %></li>
	<%} %>
	</ol>
<%} %>
<%if(hl.getUserAns()==hl.getCorrectAns()){ %>
	<a href="/ransuu/main">もう一度</a>
<%} %>
</body>
</html>