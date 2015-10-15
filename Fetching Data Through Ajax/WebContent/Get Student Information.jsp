<%@ page import="java.sql.*"%>
<%
	String Student_ID=request.getParameter("SID");
	System.out.println(Student_ID);
	try {
		Connection conn=Database_Connection.DatabaseConnection.DBConnection();
		String SELECT="SELECT sname,mo_no from Student where sid="+Student_ID+"";
		PreparedStatement pstmt=conn.prepareStatement(SELECT);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next())
		{
			String StudentID=rs.getString(1)+"/"+rs.getString(2);
			response.getWriter().write(StudentID);
		}
		
	} catch (Exception e) {
		System.out.println("Something Went Wrong....!");
	}
%>