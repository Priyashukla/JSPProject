
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
    </head>
    <body>
        <%

            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String driver = "oracle.jdbc.OracleDriver";
            String uName = "system";
            String pass = "system";
            Connection con = null;

            try {
                Class.forName(driver);
                con = DriverManager.getConnection(url, uName, pass);
                //  st = con.createStatement();
                int emp_id = (Integer) session.getAttribute("emp_id");
                String username = request.getParameter("username");
                String email = request.getParameter("email");

                String dobdata = request.getParameter("dob");
                String[] d = dobdata.split("-");
                String dob = "";
                for (int i = d.length - 1; i >= 0; i--) {
                    dob = dob + d[i];
                    if (i != 0) {
                        dob = dob.concat("-");
                    }
                }
                System.out.println(dob);
                String desig = request.getParameter("desig");
                String adds = request.getParameter("adds");
                String query = "update emp_detail set username='" + username + "',email='" + email + "',dob='" + dob + "',desig='" + desig + "',adds='" + adds + "' where emp_id='" + emp_id + "'";
                /* PreparedStatement ps = con.prepareStatement
        ("update emp_detail set username=?,email=?,dob=?,desig=?,adds=? where emp_id=?");
        
            ps.setString(1,username);
            ps.setString(2,email);
            ps.setDate(3,dob);
            ps.setString(4,desig);
            ps.setString(5,adds);
            ps.setInt(6,emp_id);
        
          int nora =  ps.executeUpdate();
          
          out.print(nora);*/
                Statement st = con.createStatement();

                int nora = st.executeUpdate(query);

                System.out.println(nora);

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
                rd.forward(request, response);
                //out.close();

            }
        %>
    </body>
</html>
