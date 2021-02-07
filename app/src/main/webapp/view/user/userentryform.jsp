<!-- userentryform.jsp -->
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="loginUserRecord" class="board.app.sample.bean.user.LoginUserRecordBean" scope="request" />
<jsp:useBean id="errormessages" class="java.util.ArrayList" type="java.util.ArrayList<String>" scope="request" />
<html>
<head>
<title>ログインユーザー登録フォーム</title>
</head>
<body>
<h1>ログインユーザー登録フォーム</h1>
<div text-align="center">
<form method="POST" action="<%=request.getContextPath() %>/user/entryresult">
<table border="1">
<tr><td>ユーザーID</td><td><input type="text" name="userid" value="<jsp:getProperty name="loginUserRecord" property="userId"/>" /></td></tr>
<tr><td>ユーザー名</td><td><input type="text" name="username" value="<jsp:getProperty name="loginUserRecord" property="userName"/>" /></td></tr>
<tr><td>パスワード</td><td><input type="text" name="password" value="<jsp:getProperty name="loginUserRecord" property="password"/>" /></td></tr>
<tr><td>メールアドレス</td><td><input type="text" name="email" value="<jsp:getProperty name="loginUserRecord" property="email"/>" /></td></tr>
<tr>
  <td>権限</td>
  <td>
    <input type="radio" name="adminflag" value="1" <% if ( "1".equals(loginUserRecord.getAdminFlag()) ) { %> checked <% } %>>管理者</input>
    <input type="radio" name="adminflag" value="0" <% if ( !"1".equals(loginUserRecord.getAdminFlag()) ) { %> checked <% } %>>一般</input>
  </td>
</tr>
</table>
<input type="submit" value="登録" />
</form>
</div>
<% if (errormessages.size() > 0) { %>
<div>
<% for(String message : errormessages) { %>
<p><%=message %></p>
<% } %>
</div>
<% } %>
<a href="<%=request.getContextPath() %>/user/list">キャンセル</a>
</body>
</html>