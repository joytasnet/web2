<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p>
<c:out value="${loginUser.name }" />さん、ログイン中
<a href="Logout">ログアウト</a>
</p>
<p><a href="Main">更新</a></p>
<form action="Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<c:if test="${not empty errorMsg }">
<p><c:out value="${errorMsg }" /></p>
</c:if>
<c:if test="${not empty mutterList }">
<table border="1">
<tr><th>ユーザー名</th><th>つぶやき</th><th></th></tr>
<c:forEach var="mutter" items="${mutterList }">
<tr>
<td><c:out value="${mutter.userName }" /></td>
<td><c:out value="${mutter.userText }" /></td>
<td>
<c:if test="${mutter.userName eq loginUser.name }">
<a href="Update?id=${mutter.id }">変更</a>
<a href="Delete?id=${mutter.id}" onclick="return confirm('このつぶやきを削除してよろしいですか？')">削除</a>
</c:if>
</td>
</tr>
</c:forEach>
</table>
</c:if>
<jsp:include page="footer.jsp" />
</body>
</html>