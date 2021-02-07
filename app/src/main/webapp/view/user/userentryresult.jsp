<!-- userentryresult.jsp -->
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="loginUserRecord" class="board.app.sample.bean.user.LoginUserRecordBean" scope="request" />
<html>
<head>
<title>ユーザー登録結果</title>
</head>
<body>
<h1>ユーザー登録結果</h1>
<p><jsp:getProperty name="loginUserRecord" property="userName"/> を登録しました。</p>
<a href="<%=request.getContextPath() %>/user/list">ユーザーリスト</a>
</body>
</html>