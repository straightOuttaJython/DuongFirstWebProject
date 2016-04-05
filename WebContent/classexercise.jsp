<html>
<head>
<title>Class Exercise</title>
</head>
<body>
<% 
String error = request.getParameter("error"); 
String name = request.getParameter("name"); 
if(error == null){
	error = "";
}
if(error.equals("row")){
	out.println("Hello " + name + ". PROVIDE A ROW VALUE GRATER THAN 0.");
}
else if(error.equals("column")){
	out.println("Hello " + name + ". PROVIDE A COLUMN VALUE GRATER THAN 0.");
}
else{
	out.println("Please enter the dimensions of the desired table below :");
}
%>
<br>
<p><% request.getParameter("name"); %></p>
<form action="createtable.jsp">
<table border=2>
<tr>
	<td> Enter your name </td>
	<td><input type="text" name="name"></td> 
</tr>

<tr>
	<td> Enter number of rows </td>
	<% 
	if(error.equals("row") || error.equals("column")){
	%>
	<td><input type="text" name="row" value="1"></td>
	<% } 
	else{
	%>
	<td><input type="text" name="row"></td>
	<% }%>
</tr>

<tr>
	<td> Enter number of column </td>
		<% 
	if(error.equals("row") || error.equals("column")){
	%>
	<td><input type="text" name="column" value="1"></td>
	<% } 
	else{
	%>
	<td><input type="text" name="column"></td>
	<% }%>
</tr>

<tr>
	<td><input type="submit" value="Submit"> </td>
	<td><input type="reset" value="Reset"> </td> 
</tr>

</table>
</form>
</body>

</html>