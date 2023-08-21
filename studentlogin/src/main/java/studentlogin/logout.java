package studentlogin;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/out")
public class logout extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException {
//		System.out.println("hello");
		res.sendRedirect("login.jsp");
	}

}
