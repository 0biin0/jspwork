package board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


public class BoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		
		Board board = new Board();
		board.setPass(request.getParameter("pass"));
		board.setNum(Integer.parseInt(request.getParameter("num")));
		
		HttpSession session = request.getSession();
		Board inBean= (Board)session.getAttribute("bean");
		
		
		if(inBean.getPass().equals(board.getPass())) {
			new BoardDao().deleteBoard(board);
			out.println("<script>");
			out.println("   alert('삭제되었습니다.')");
			out.println("   location.href = 'list.jsp'");
			out.println("</script>");
		
		}else {
			out.println("<script>");
			out.println("   alert('비밀번호가 맞지않습니다.')");
			out.println("   history.back();");
			out.println("</script>");
		}
	}

}
