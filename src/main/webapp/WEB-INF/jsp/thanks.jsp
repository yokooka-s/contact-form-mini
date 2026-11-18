<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // お問い合わせ種別（チェックボックス）は複数あるので、配列のまま受け取る
    String[] cates = (String[]) request.getAttribute("cates");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせ（完了）</title>
</head>

<body>
<h1>お問い合わせありがとうございました</h1>
<p>次の内容で受け付けました。</p>
<table border="1">
  <tr>
    <th>名前</th>
    <td>${onamae}</td>
  </tr>
  <tr>
    <th>メールアドレス</th>
    <td>${mail_address}</td>
  </tr>
    <tr>
    <th>電話番号</th>
    <td>${tel}</td>
  </tr>
  <tr>
    <th>性別</th>
    <td>${sex}</td>
  </tr>
  <tr>
    <th>お問い合わせ種別</th>
    <td>
<% if (cates != null) { for (String cate : cates) { %>
      <%= cate %><br>
<% } } %>
    </td>
  </tr>
  <tr>
    <th>住まいエリア</th>
    <td>${pref}</td>
  </tr>
  <tr>
    <th>メッセージ</th>
    <td><p style="white-space: pre-wrap;">${message}</p></td>
  </tr>
</table>
<p><a href="${pageContext.request.contextPath}/contact/input">入力画面へ戻る</a></p>
</body>
</html>
