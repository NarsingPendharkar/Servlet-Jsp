package example;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("message", "Welcome to JSP & JSTL!");
		List<String> items = Arrays.asList("Apple", "Banana", "Cherry");
		request.setAttribute("items", items);
		request.getRequestDispatcher("hello.jsp").forward(request, response);
	}

}
