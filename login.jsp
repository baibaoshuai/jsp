<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
<title>Insert title here</title>
<%
	String username = "";
	String password = "";
	//获取当前站点的所有Cookie
	
	Cookie[] cookies = request.getCookies();
	for (int i = 0; i<cookies.length;i++){
		if("username".equals(cookies[i].getName())){//对cookies中的数据进行遍历，找到用户名，密码的数据
			username = cookies[i].getValue();
		}else if("password".equals(cookies[i].getName())){
			password = cookies[i].getValue();
		}
	}
%>
</head>
<body>
	<form action="login_handler.jsp" method="post" >
		username:<input type="text" name="name" value ="<%=username%>"/><br/>
		password:<input type="password" name="pwd" value = "<%=password%>"/><br/>
		<input type="checkbox" value="y" name="isLogin">自動登録<br/>
		<input type="submit" value="登録" /> 
	</form>

</body>
</html>