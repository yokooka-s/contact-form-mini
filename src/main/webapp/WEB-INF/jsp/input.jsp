<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>お問い合わせ（入力）</title>
</head>

<body>
<h1>お問い合わせフォーム</h1>
<p>必要なことを入力して「確認画面へ」を押してください。</p>
<form action="${pageContext.request.contextPath}/contact/confirm" method="post">
  <table border="1">
    <tr>
      <th>名前（必須）</th>
      <td><input type="text" name="onamae" required></td>
    </tr>
    <tr>
      <th>メールアドレス（必須）</th>
      <td><input type="email" name="mail_address" required></td>
    </tr>
        <tr>
      <th>電話番号</th>
      <td><input type="tel" name="tel"></td>
    </tr>
    <tr>
      <th>性別</th>
      <td>
        <label><input type="radio" name="sex" value="男性">男性</label>
        <label><input type="radio" name="sex" value="女性">女性</label>
      </td>
    </tr>
    <tr>
      <th>お問い合わせ種別</th>
      <td>
        <label><input type="checkbox" name="cates" value="製品について">製品について</label>
        <label><input type="checkbox" name="cates" value="サービスについて">サービスについて</label>
        <label><input type="checkbox" name="cates" value="採用について">採用について</label>
        <label><input type="checkbox" name="cates" value="その他">その他</label>
      </td>
    </tr>
    <tr>
      <th>住まいエリア</th>
      <td>
        <select name="pref">
          <option value="">選択してください</option>
          <option value="北海道">北海道</option>
          <option value="東北">東北</option>
          <option value="関東">関東</option>
          <option value="中部">中部</option>
          <option value="近畿">近畿</option>
          <option value="中国">中国</option>
          <option value="四国">四国</option>
          <option value="九州・沖縄">九州・沖縄</option>
        </select>
      </td>
    </tr>
    <tr>
      <th>メッセージ（必須）</th>
      <td><textarea name="message" rows="5" cols="40" required></textarea></td>
    </tr>
  </table>
  <p><input type="submit" value="確認画面へ"></p>
</form>
</body>
</html>
