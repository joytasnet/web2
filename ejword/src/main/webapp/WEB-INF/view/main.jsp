<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*"%>
<%
String searchWord =(String)request.getAttribute("searchWord");
searchWord = searchWord == null ? "":searchWord;
//if(searchWord == null){searchWord ="";}
String mode = (String)request.getAttribute("mode");
mode =mode ==null ? "":mode;
List<Word> list = (List<Word>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EJWord</title>
</head>
<body>
<form action="/ejword/main" method="post">
<input type="text" name="searchWord" value="<%=searchWord%>">
<select name="mode">
<option value="startsWith" <%=mode.equals("startsWith")? " selected":"" %>>で始まる</option>
<option value="contains" <%=mode.equals("contains")? " selected":"" %>>含む</option>
<option value="endsWith" <%=mode.equals("endsWith")? " selected":"" %>>で終わる</option>
<option value="match" <%=mode.equals("match")? " selected":"" %>>一致する</option>
</select>
<button type="submit">検索</button>
</form>
<% if (list != null && list.size() > 0){ %>
<table border="1">
<%for(Word w :list){ %>
<tr><th><%=w.getTitle() %></th><td><%=w.getBody() %></td></tr>
<%} %>
</table>
<%} %>
</body>
</html>