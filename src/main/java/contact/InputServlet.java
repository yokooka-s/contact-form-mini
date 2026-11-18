package contact;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 入力画面を表示するサーブレット。
 * GET /contact/input で呼ばれ、input.jsp を表示する。
 */
@WebServlet("/contact/input")
public class InputServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 入力画面（WEB-INF の中の JSP）へ処理を渡す
        request.getRequestDispatcher("/WEB-INF/jsp/input.jsp").forward(request, response);
    }
}
