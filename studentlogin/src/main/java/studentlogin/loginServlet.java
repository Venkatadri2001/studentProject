package studentlogin;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/log")
public class loginServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp)throws IOException{
		String id = req.getParameter("id");
		String user = req.getParameter("user");
		String pass = req.getParameter("pass");
//		System.out.println(id);
		String pass1 = dataentry.dataverify(user);
		
		if(pass.equals(pass1) && user.equals("admin"))
		{
			resp.sendRedirect("admin.jsp");
		}
		else if(pass.equals(pass1)){
			String rs = mediator.abcd(id,user);
			
			
			resp.sendRedirect("home.jsp");
			
		}
		else {
			resp.sendRedirect("login.jsp");
		}
		
		
	}

}
