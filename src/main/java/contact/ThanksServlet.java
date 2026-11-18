package contact;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 完了画面を表示するサーブレット。
 * 確認画面から POST /contact/thanks で送られた値（hidden 項目）を受け取り、thanks.jsp に渡す。
 * データベースへの保存やメール送信はしない。
 */
@WebServlet("/contact/thanks")
public class ThanksServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 日本語が文字化けしないように、値を受け取る前に文字コードを指定する
        request.setCharacterEncoding("UTF-8");

        // 確認画面の hidden 項目から送られた値を受け取る
        String onamae = request.getParameter("onamae");
        String mailAddress = request.getParameter("mail_address");
        String tel = request.getParameter("tel");
        String sex = request.getParameter("sex");
        String[] cates = request.getParameterValues("cates");
        String pref = request.getParameter("pref");
        String message = request.getParameter("message");

        // JSP で使えるように request に入れる
        request.setAttribute("onamae", onamae);
        request.setAttribute("mail_address", mailAddress);
        request.setAttribute("tel", tel);
        request.setAttribute("sex", sex);
        request.setAttribute("cates", cates);
        request.setAttribute("pref", pref);
        request.setAttribute("message", message);

        // 完了画面へ処理を渡す
        request.getRequestDispatcher("/WEB-INF/jsp/thanks.jsp").forward(request, response);
    }
}
