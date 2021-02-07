<!-- userlist.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="board.app.sample.bean.user.*"%>
<jsp:useBean id="loginUserRecord" class="board.app.sample.bean.user.LoginUserRecordBean" scope="session" />
<jsp:useBean id="loginUserListBean" class="board.app.sample.bean.user.LoginUserListBean" scope="request" />
<html>
<head>
<meta charset="UTF-8">
<title>ログインユーザー一覧</title>
</head>
<body>
<h1>ログインユーザー一覧</h1>
<div style="padding-left:500px">利用者名:<jsp:getProperty name="loginUserRecord" property="userName"/></div>
<div style="padding-left:500px"><a href="<%=request.getContextPath() %>/board/thread/list">スレッド一覧</a></div>
<div>
<table border="1">
<tr><th>ユーザーID</th><th>ユーザー名</th><th>メールアドレス</th><th>権限</th><th>更新</th><th>削除</th></tr>

<%
    ArrayList<LoginUserRecordBean> list = loginUserListBean.getLoginUserList();
    for(int i = 0; i < list.size(); i++ ) { 
        LoginUserRecordBean record = list.get(i);
%>

<tr>
<td><%=record.getUserId() %></td>
<td><%=record.getUserName() %></td>
<td><%=record.getEmail() %></td>
<td>
<% if ("1".equals(record.getAdminFlag())) { %>
管理者
<% } else { %>
一般
<% } %>
</td>
<td><a href="<%=request.getContextPath() %>/user/updateform?id=<%=record.getUserId() %>">更新</a></td>
<td><a href="<%=request.getContextPath() %>/user/deleteform?id=<%=record.getUserId() %>">削除</a></td>
</tr>

<%
    }
%>
</table>
</div>
<div>
<a href="<%=request.getContextPath() %>/user/entryform">新規登録</a>
</div>
</body>
</html>