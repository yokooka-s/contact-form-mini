package contact;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 確認画面を表示するサーブレット。
 * 入力画面から POST /contact/confirm で送られた値を受け取り、confirm.jsp に渡す。
 */
@WebServlet("/contact/confirm")
public class ConfirmServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 日本語が文字化けしないように、値を受け取る前に文字コードを指定する
        request.setCharacterEncoding("UTF-8");

        // 入力画面から送られた値を受け取る（" " の中は input の name 属性と同じ名前）
        String onamae = request.getParameter("onamae");
        String mailAddress = request.getParameter("mail_address");
        String tel = request.getParameter("tel");
        String sex = request.getParameter("sex");
        String[] cates = request.getParameterValues("cates"); // チェックボックスは複数あるので配列で受け取る
        String pref = request.getParameter("pref");
        String message = request.getParameter("message");

        // JSP で使えるように request に入れる（" " の中が JSP の ${...} の名前になる）
        request.setAttribute("onamae", onamae);
        request.setAttribute("mail_address", mailAddress);
        request.setAttribute("tel", tel);
        request.setAttribute("sex", sex);
        request.setAttribute("cates", cates);
        request.setAttribute("pref", pref);
        request.setAttribute("message", message);

        // 確認画面へ処理を渡す
        request.getRequestDispatcher("/WEB-INF/jsp/confirm.jsp").forward(request, response);
    }
}
