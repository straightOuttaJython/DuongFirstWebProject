
<%
String name = request.getParameter("name");
int row = Integer.parseInt(request.getParameter("row"));
if (row < 1){
	response.sendRedirect("classexercise.jsp?error=row&name="+name);
}
int column = Integer.parseInt(request.getParameter("column"));
if (column < 1){
	response.sendRedirect("classexercise.jsp?error=column&name="+name);
}
%>

<html>
<head>
<title>Create table</title>
</head>
<body>
<p>Hello <%= name %>. Here is your table</p><br>
<table border=2>
<% for(int i = 0; i < row; i++){ %>
<tr>
<% for (int j = 0; j < column; j++){ %>
	<td><%= i+1 %>, <%= j+1 %></td>
<% }%>
</tr>
<% }%>
</table>
</body>
</html>

