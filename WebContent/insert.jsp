
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<%@page import="java.sql.*"%>
	<%
    


try{
	ResultSet rs=null;
	Connection con = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String driver = "oracle.jdbc.OracleDriver";
	String userName ="system";
	String pass="system";
Class.forName(driver);
con = DriverManager.getConnection(url,userName,pass);

Statement st = con.createStatement();

String username = request.getParameter("username");
String email = request.getParameter("email");
String dobdata = request.getParameter("dob");
String[] d = dobdata.split("-");
String dob = "";
for (int i = d.length-1; i >= 0; i--) 
    {
        dob  = dob + d[i];
        if(i != 0)
        {
           dob = dob.concat("-");
        }
    }
System.out.println(dob);
String desig = request.getParameter("desig");
String adds = request.getParameter("adds");

 /*PreparedStatement ps = con.prepareStatement
        ("insert into emp_detail(username,email,dob,desig,adds) values(username='"+username+"',email='"+email+"',dob='"+date+"',desig='"+desig+"',adds='"+adds+"')");
        
            ps.setString(1,userName);
            ps.setString(2,email);
            ps.setDate(3,date);
            ps.setString(4,desig);
            ps.setString(5,adds);
            ps.setInt(6,emp_id);
        
          int nora =  ps.executeUpdate();
          
          out.print(nora);*/
String qry = "insert into emp_detail(username,email,dob,desig,adds) values('"+username+"','"+email+"','"+dob+"','"+desig+"','"+adds+"')";
int r = st.executeUpdate(qry); 
con.close();
}

catch(SQLException ex){
System.out.println("SQL satatment not found"+ex);
}
%>
	<jsp:forward page="MainPage.jsp"></jsp:forward>

</body>
</html>
