<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Page</title>
</head>
<body>
	<%
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String driver = "oracle.jdbc.OracleDriver";
	String userName = "priya";
	String pass = "password";
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;

	try {
		String emp_id = request.getParameter("emp_id");

		// store the value of subject into session
		session.setAttribute("emp_id", emp_id);

		Class.forName(driver);
		con = DriverManager.getConnection(url, userName, pass);
		st = con.createStatement();
		String query = "delete from emp_detail where emp_id='" + emp_id + "'";
		rs = st.executeQuery(query);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} finally {
		RequestDispatcher rd = request.getRequestDispatcher("MainPage.jsp");
		rd.forward(request, response);
		out.close();

	}
	%>
</body>
</html>
