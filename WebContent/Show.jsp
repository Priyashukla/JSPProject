<%@page import="java.sql.*"%>
<html>
    <head><title>All Employees</title></head>
    <body>
        <style type="text/css">
body {
  background: #999;
  padding: 10px;
  font-family: "Open Sans Condensed", sans-serif;
  background-image: url("images/p2.jpg");
  background-size: cover;
  opacity: 0.7;
}
</style>
    <center>
        <h2 align="center"><font color="blue">Detail</font></h2>
<%
    
Connection con = null;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String driver = "oracle.jdbc.OracleDriver";
String userName ="system";
String pass="system";
ResultSet rs=null;
Statement st=null;
Class.forName(driver);
        try{
con = DriverManager.getConnection(url,userName,pass);
st = con.createStatement();

String query = "SELECT * from emp_detail";
      rs = st.executeQuery(query);
      while (rs.next()) {
          %>
 
           <table border="1" width="40px" bgcolor="#fff" cellspacing="0" cellpadding="0">
<tr>
<td width="50%">

<table border="0" width="40px" cellspacing="0.5" cellpadding="1">
    <tr>
<td width="50%"><b>ID:</b></td>
<td width="30%"><textarea name="emp_id" rows="2" cols="60"><%=rs.getInt("emp_id")%></textarea> </td>
</tr>   
    <tr>
<td width="50%"><b>Employee Name:</b></td>
<td width="50%"><textarea name="username" rows="2" cols="60"><%=rs.getString("username")%></textarea> </td>
</tr>   
<tr>
<td width="50%"><b>Employee EmailId:</b></td>
<td width="50%"><textarea name="email" rows="2" cols="60"><%=rs.getString("email")%></textarea> </td>
</tr>
<tr>
<td width="50%"><b>Employee date of birth:</b></td>
<td width="50%"><textarea name="dob" rows="2" cols="60"><%=rs.getDate("dob")%></textarea></td>
</tr>
<tr>
<td width="50%"><b>Designation:</b></td>
<td width="50%"><textarea name="desig" rows="2" cols="60"><%=rs.getString("desig")%></textarea></td>
</tr>

<tr>
<td width="50%"><b>Address:</b></td>
<td width="50%"><textarea name="adds" rows="2" cols="60"><%=rs.getString("adds")%></textarea></td>
</tr>

</table>
</center> 
</table>
<%
              }
           con.close();
      
    } catch (Exception e) {
      e.printStackTrace();
} 
%>
<center>
    <a href="MainPage.jsp"><font color="white"><b>BACK</b></font></a>

</center> 
    </center>
    </body>
    </html>