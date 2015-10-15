package Ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectStates")
public class AjaxDemo extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	protected void  doGet(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException 
	{
		res.setContentType("text/html");
		String State_NM=null;
		String Country_Name=req.getParameter("Country");
		System.out.println(Country_Name);
		try {
			Connection conn=Database_Connection.DatabaseConnection.DBConnection();
			String SELECT="SELECT State_Name from Country_State where Country_Name='"+Country_Name+"'";
			PreparedStatement pstmt=conn.prepareStatement(SELECT);
			ResultSet rs=pstmt.executeQuery();
			PrintWriter writer=res.getWriter();
			while(rs.next())
			{
				State_NM=rs.getString(1);
				writer.write("<option>"+State_NM+"</option>");
				//res.getWriter().write(State_NM);
			}	
		} catch (Exception e) {
			System.out.println("Something Went Wrong....!");
		}
	}
	/*public static void main(String[] args) {
		String str="asdaa,sdaasda,sdsaadasd";
		String []a=str.split(",");
		for(int i=0;i<a.length;i++)
		System.out.println(a[i]);
	}*/
}
