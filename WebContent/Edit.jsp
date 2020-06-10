

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <style type="text/css">
            body {
                background: #999;
                padding: 80px;
                font-family: "Open Sans Condensed", sans-serif;
                background-image: url("images/pic20.jpg");
                background-size: cover;
                opacity:0.7;
            }
        </style>

        <%
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String driver = "oracle.jdbc.OracleDriver";
            String uName = "system";
            String pass = "system";
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;

            int emp_id = Integer.parseInt(request.getParameter("emp_id"));

            // store the value of subject into session
            session.setAttribute("emp_id", emp_id);

            Class.forName(driver);
            con = DriverManager.getConnection(url, uName, pass);
            st = con.createStatement();

            String query = "select * from emp_detail where emp_id='" + emp_id + "'";
            rs = st.executeQuery(query);

            if (rs.next()) {
        %>

    <center>
        <form action="Edit1.jsp" method="post">
            <table border="1" width="450px" bgcolor="#fff" cellspacing="0" cellpadding="0">

                <tr>       
                    <td width="50%">

                        <table border="0" width="40px" cellspacing="0.5" cellpadding="4">

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
                                <td width="30%"><input type="date" name="dob" pattern="dd-mmm-yyyy" value="<%=rs.getDate("dob")%>" style="width:440px; height: 20px;"/></td>
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
                <center>
                    <p><input type="submit" value="Submit" name="submit">
                        <input type="reset" value="Reset" name="reset"></p>
                </center> 
                </td>
                </tr>
            </table>
    </center>
</form>

<%}%>
</center>
</body>
</html>
