<%@ page import="java.sql.*"%>
<select name="States">
<option value="Select">-Select State-</option>
<%
	String Country_Name=request.getParameter("Country");
	System.out.println(Country_Name);
	try {
		Connection conn=Database_Connection.DatabaseConnection.DBConnection();
		String SELECT="SELECT State_Name from Country_State where Country_Name='"+Country_Name+"'";
		PreparedStatement pstmt=conn.prepareStatement(SELECT);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next())
		{
			String State_NM=rs.getString(1);
			%>
			<option value=<%=State_NM %>><%=State_NM %></option>
			<%
		}
		
	} catch (Exception e) {
		System.out.println("Something Went Wrong....!");
	}
%>
</select>