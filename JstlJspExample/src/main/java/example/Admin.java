package example;

import java.io.IOException;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/home")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setAttribute("error", "Narsing !");
		HttpSession session=request.getSession();
		session.setAttribute("username", "narsing");
		request.getRequestDispatcher("Home.jsp").forward(request, response);
		session.invalidate();
		


	}
	
	
	


}
