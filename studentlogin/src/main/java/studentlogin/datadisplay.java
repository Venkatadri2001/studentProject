package studentlogin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/reg")
public class datadisplay  extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException {
		String id = mediator.st;
		System.out.println("dfggf");
		System.out.println("id"+id);
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String query = "select * from marks where id = ?";
//		System.out.println(id);
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1, id);
			resp.getWriter().print("<table border = 1 style = 'background-color:rgba(200,200,200,0.7);color:black' align = 'center'>");
				resp.getWriter().print("<h1 style = 'background-color:rgba(200,200,200,0.7);color:black' align = 'center'>MARKS DETAILS</h1>" );
				ResultSet rs = ps.executeQuery();
				resp.getWriter().print("<tr>");
				
				resp.getWriter().print("<th style = 'font-size:20px'> ID </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM1 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM2 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM3 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM4 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM5 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM6 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM7 </th>");
				resp.getWriter().print("<th style = 'font-size:20px'> SEM8 </th>");
				resp.getWriter().print("</tr>");				
				rs.next();
				resp.getWriter().print("<tr>");
				
				resp.getWriter().print("<th>"+ rs.getString(1) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(2) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(3) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(4) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(5) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(6) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(7) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(8) +"</th>");
				resp.getWriter().print("<th>"+ rs.getString(9) +"</th>");
				resp.getWriter().print("</tr>");	
				resp.getWriter().print("</table>");
			
			
			
		}
		catch (Exception e)
		{
			System.out.println("issuee in fetching marks");
			e.printStackTrace();
		}
	
		
	}
}

