<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int x=1000,y=3000;
int sum = 0;
for(int i=x;i<=y;i++){
	sum += i;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><%= x %>から<%= y %>までの和は<%=sum %>です。</p>
</body>
</html>