<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Squares</title>
	</head>
	<body>
		<%
		int n = Integer.parseInt(request.getParameter("n"));
		for (int i = 1; i <= n; ++i)
			out.println(i * i);
		%>
	</body>
</html>

