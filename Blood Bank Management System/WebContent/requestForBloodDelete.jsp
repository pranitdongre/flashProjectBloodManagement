<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
int i=st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
response.sendRedirect("requestForBlood.jsp?msg=deleted");
}
catch(Exception e)
{
response.sendRedirect("requestForBlood.jsp?msg=invalid");
}
%>