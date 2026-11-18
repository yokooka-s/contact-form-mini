<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // お問い合わせ種別（チェックボックス）は複数あるので、配列のまま受け取る
    String[] cates = (String[]) request.getAttribute("cates");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせ（確認）</title>
</head>

<body>
<h1>入力内容の確認</h1>
<p>この内容でよければ「送信する」を押してください。</p>
<form action="${pageContext.request.contextPath}/contact/thanks" method="post">
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
  <%-- ここから下は、完了画面へ値を引き継ぐための hidden 項目（画面には表示されない） --%>
  <input type="hidden" name="onamae" value="${onamae}">
  <input type="hidden" name="mail_address" value="${mail_address}">
  <input type="hidden" name="tel" value="${tel}">
  <input type="hidden" name="sex" value="${sex}">
<% if (cates != null) { for (String cate : cates) { %>
  <input type="hidden" name="cates" value="<%= cate %>">
<% } } %>
  <input type="hidden" name="pref" value="${pref}">
  <input type="hidden" name="message" value="${message}">
  <p><input type="submit" value="送信する"></p>
</form>
</body>
</html>
