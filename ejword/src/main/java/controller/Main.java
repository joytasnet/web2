package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.WordDAO;
import model.Word;

@WebServlet("/main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd =
				request.getRequestDispatcher("/WEB-INF/view/main.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String searchWord = request.getParameter("searchWord");
		String mode=request.getParameter("mode");
		WordDAO dao = new WordDAO();
		List<Word> list = dao.getListBySearchWord(searchWord, mode);
		request.setAttribute("searchWord", searchWord);
		request.setAttribute("mode", mode);
		request.setAttribute("list", list);

		doGet(request,response);
	}
}