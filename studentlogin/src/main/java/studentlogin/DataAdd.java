package studentlogin;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
@WebServlet("/data")
public class DataAdd extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse resp)throws IOException
	{
		String id = req.getParameter("id");
		String sem1 = req.getParameter("sem1");
		String sem2 = req.getParameter("sem2");
		String sem3 = req.getParameter("sem3");
		String sem4 = req.getParameter("sem4");
		String sem5 = req.getParameter("sem5");
		String sem6 = req.getParameter("sem6");
		String sem7 = req.getParameter("sem7");
		String sem8 = req.getParameter("sem8");
//		System.out.println(id);
		dataentry.adddata(id,sem1,sem2,sem3,sem4,sem5,sem6,sem7,sem8);
		resp.sendRedirect("admin.jsp");
		
	}

}
