package studentlogin;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/con")
public class Contact extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		String name = req.getParameter("nam");
		String phone = req.getParameter("phone");
		String mail = req.getParameter("mail");
		String feedback = req.getParameter("area");
//		System.out.println(name);
		dataentry.contact(name, phone,mail,feedback);
		resp.sendRedirect("contact.jsp");
		
	}

}
