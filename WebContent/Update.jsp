<%@page import="java.sql.*"%>
<html>
    <head><title>All Questions</title></head>
<body>
    <style type="text/css">
body {
  background: #999;
  padding: 8px;
  font-family: "Open Sans Condensed", sans-serif;
  background-image: url("images/pic24.jpg");
  background-size: cover;
  opacity:0.6;
}
</style>
    <center><h1 align="center"><font color="red">All Employee</font></h1>
    <center>
    <a href="MainPage.jsp"><font color="white"><b>BACK</b></font></a>

    </center>
<%
   
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String driver = "oracle.jdbc.OracleDriver";
String userName ="system";
String pass="system";
try{
   
   Class.forName(driver);
Connection con = DriverManager.getConnection(url,userName,pass);
Statement st = con.createStatement();
String query = "SELECT * from emp_detail";
   ResultSet   rs = st.executeQuery(query);
      while (rs.next()) {
          %>
        <table border="3" width="50px" bgcolor="#fff" cellspacing="0" cellpadding="0" style="color:white;">               



            <table border="0" width="40px" cellspacing="1" cellpadding="0" style="color:white;">
 
<tr>
<td width="50%"><b>ID:</b></td>
<td width="30%"><textarea name="emp_id" rows="2" cols="60"><%=rs.getInt("emp_id")%></textarea> </td>
</tr>   
    <tr>
<td width="50%"><b>Username:</b></td>
<td width="30%"><textarea name="username" rows="2" cols="60"><%=rs.getString("username")%></textarea> </td>
</tr>   
<tr>
<td width="50%"><b>Email:</b></td>
<td width="30%"><textarea name="email" rows="2" cols="60"><%=rs.getString("email")%></textarea> </td>
</tr>
<tr>
<td width="50%"><b>Dob:</b></td>
<td width="30%"><input type="date" name="dob" value="<%=rs.getDate("dob")%>" style="width:440px; height: 20px; "/></td>
</tr>
<tr>
<td width="50%"><b>Designation:</b></td>
<td width="30%"><textarea name="desig" rows="2" cols="60"><%=rs.getString("desig")%></textarea></td>
</tr>

<tr>
<td width="50%"><b>Address:</b></td>
<td width="30%"><textarea name="adds" rows="2" cols="60"><%=rs.getString("adds")%></textarea></td>
</tr>

</table>
           </tr>
</td>
<tr>
      <td width="50%" rowspan="4" align="center"><a href="Edit.jsp?emp_id=<%=rs.getInt("emp_id")%>"><button>Edit</button></a></td>
      <td width="50%" rowspan="4" align="center"><a href="Delete.jsp?emp_id=<%=rs.getInt("emp_id")%>"><button>Delete</button></a></td>
 
</tr>
       

</table>
<%
             }
           con.close();
      
    } catch (Exception e) {
      e.printStackTrace();
    } 
%>
 

</body>
</html>
