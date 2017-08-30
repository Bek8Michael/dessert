<%
	String id = (String)session.getAttribute("cust_id");
	if (id == null || id.equals("")) {
		response.sendRedirect("loginForm.jsp");
		return;
	}
%>