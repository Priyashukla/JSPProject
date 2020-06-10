
<html>
<title>Detail</title>
<head>

<style type="text/css">
body {
	background: #999;
	padding: 80px;
	font-family: "Open Sans Condensed", sans-serif;
	background-image: url("images/pic12.jpg");
	background-size: cover;
}
</style>

</head>

<body>
	<br>
	<br />
	<center>

		<tr>
			<td width="50%">

				<form method="POST" action="insert.jsp">

					<h2 align="center">
						<font color="red">Details</font>
					</h2>
					<table border="0" width="400px" cellspacing="2" cellpadding="1">
						<tr>
							<td width="50%"><b>Name:</b></td>
							<td width="50%"><textarea name="username" rows="2" cols="60"></textarea>
							</td>
						</tr>
						<tr>
							<td width="50%"><b>EmailId:</b></td>
							<td width="50%"><textarea name="email" rows="2" cols="60"></textarea>
							</td>
						</tr>
						<tr>
							<td width="50%"><b>date of birth:</b></td>
							<td width="50%"><input type="date" name="dob"
								pattern="dd-mmm-yyyy" style="width: 440px; height: 30px;" /></td>
						</tr>
						<tr>
							<td width="50%"><b>Designation:</b></td>
							<td width="50%"><textarea name="desig" rows="2" cols="60"></textarea></td>
						</tr>

						<tr>
							<td width="50%"><b>Address:</b></td>
							<td width="50%"><textarea name="adds" rows="2" cols="60"></textarea></td>
						</tr>

					</table>
					<center>
						<p>
							<input type="submit" value="Submit" name="submit"> 
							<input type="reset" value="Reset" name="reset">
						</p>
					</center>
				</form>
			</td>
		</tr>
		</table>
	</center>

</body>
</html>
