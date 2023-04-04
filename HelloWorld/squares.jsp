<%@ page import = "java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Squares</title>
	</head>
	<body>
		<h3>Generated Squares:</h3>
		<ul>
			<%
			ArrayList<Integer> squareItems = (ArrayList<Integer>) request.getAttribute("squareItems");
			for (int item : squareItems) {
			%>
				<li><%=item %></li>
			<%
			}
			%>
		</ul>
	</body>
</html>

