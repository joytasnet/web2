<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
User loginUser = (User)session.getAttribute("loginUser");
Mutter mutter=(Mutter)request.getAttribute("mutter");
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p>
${loginUser.name}さん、ログイン中
<a href="Logout">ログアウト</a>
</p>
<form action="Update" method="post">
<input type="text" name="text" value="${mutter.userText}"><br>
<input type="hidden" name="id" value="${mutter.id}"><br>
<input type="submit" value="更新">
</form>
<jsp:include page="footer.jsp" />
</body>
</html>