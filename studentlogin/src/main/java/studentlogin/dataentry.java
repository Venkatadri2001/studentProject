package studentlogin;
import java.sql.*;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;
public class dataentry {
	public static void datastore(String id,String name,String mail,String pass) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "SYSTEM";
		String passw = "system";
		String sql = "INSERT INTO students VALUES(?,?,?,?)";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, mail);
			ps.setString(4, pass);
			ps.executeUpdate();
			System.out.println("register success");
			
			
		}
		catch (Exception ex){
			System.out.println("register issue");
			ex.printStackTrace();
			
			
		}
	}
	
	
	public static String dataverify(String uname) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select pass from students where name = ?";
		String dbpass = "";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, uname);
			ResultSet rs = ps.executeQuery();
			rs.next();
			dbpass = rs.getString(1);
			
			ps.executeUpdate();
			
		}
		catch(Exception ex)
		{
			System.out.println("login issue");
			ex.printStackTrace();
			
			
		}
		return dbpass;

	}
	public static List userinfo() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String query = "select id,name,mail from students";
		List ulist = new ArrayList();
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				String temp = rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3);
				ulist.add(temp);
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println("issuee in fetching userinfo");
			e.printStackTrace();
		}
		return ulist;
		
		
	}

	public static void adddata(String id,String sem1,String sem2,String sem3,String sem4,String sem5,String sem6,String sem7,String sem8) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String sql = "INSERT INTO MARKS VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, id);
			ps.setString(2, sem1);
			ps.setString(3, sem2);
			ps.setString(4, sem3);
			ps.setString(5, sem4);
			ps.setString(6, sem5);
			ps.setString(7, sem6);
			ps.setString(8, sem7);
			ps.setString(9, sem8);
			ps.executeUpdate();
			System.out.println("data added successfully");
			
			
		}
		catch (Exception ex){
			System.out.println("data adding issue");
			ex.printStackTrace();
			
			
		}
	
	

	}
	
	
	public static String fetchmarks(String id) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String query = "select * from marks where id = ?";
		String temp = "";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			rs.next();
			temp = rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5)+":"+rs.getString(6)+":"+rs.getString(7)+":"+rs.getString(8)+":"+rs.getString(9);
				
			
			
			
		}
		catch (Exception e)
		{
			System.out.println("issuee in fetching userinfo");
			e.printStackTrace();
		}
		return temp;
		
		
	}
	
	
	
	public static void contact(String name,String phone,String mail,String feedback) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String sql = "INSERT INTO CONTACT VALUES(?,?,?,?)";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, mail);
			ps.setString(4, feedback);
			
			ps.executeUpdate();
			System.out.println("contact successfully");
			
			
		}
		catch (Exception ex){
			System.out.println("contact issue");
			ex.printStackTrace();
			
			
		}
	
	

	}
	
	
	public static List contactinfo() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uname = "system";
		String passw = "system";
		String query = "select name,phone,mail,feedback from contact";
		List clist = new ArrayList();
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,uname,passw);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				String temp = rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				clist.add(temp);
			}
			
			
		}
		catch (Exception e)
		{
			System.out.println("issuee in fetching userinfo");
			e.printStackTrace();
		}
		return clist;
		
		
	}
	
	
	
	
	
	
}
