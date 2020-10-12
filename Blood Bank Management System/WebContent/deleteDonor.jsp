<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
String id=request.getParameter("id");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
int i=st.executeUpdate("delete from donor where id='"+id+"'");
response.sendRedirect("editDeleteList.jsp?msg=deleted");
}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid");
}
%>
