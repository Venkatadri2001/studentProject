package studentlogin;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
@WebServlet("/register")
public class registerServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		String id = req.getParameter("id");
		String username = req.getParameter("user");
		String mail = req.getParameter("mail");
		String password = req.getParameter("password");

		dataentry.datastore(id,username,mail,password);
		res.sendRedirect("register.jsp");
	}

}
