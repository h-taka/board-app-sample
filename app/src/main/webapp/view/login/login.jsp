<!-- login.jsp -->
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="loginUserRecord" class="board.app.sample.bean.user.LoginUserRecordBean" scope="request" />
<jsp:useBean id="errormessages" class="java.util.ArrayList" type="java.util.ArrayList<String>" scope="request" />
<html>
<head>
<title>ログインフォーム</title>
</head>
<body>
<h1>ログインフォーム</h1>
<div text-align="center">
<form method="POST" action="<%=request.getContextPath() %>/loginresult">
<table border="1">
<tr><td>ユーザーID</td><td><input type="text" name="userid" value="<jsp:getProperty name="loginUserRecord" property="userId"/>" /></td></tr>
<tr><td>パスワード</td><td><input type="text" name="password" value="<jsp:getProperty name="loginUserRecord" property="password"/>" /></td></tr>
<tr></tr>
</table>
<input type="submit" value="ログイン" />
</form>
</div>
<% if (errormessages.size() > 0) { %>
<div>
<% for(String message : errormessages) { %>
<p><%=message %></p>
<% } %>
</div>
<% } %>
</body>
</html>