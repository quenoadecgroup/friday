
<%@page import="javax.xml.soap.Node"%>
<html>
<head>
<title></title>
</head>
<body>
<%
	WbdProductionHelper helper = null;
	JspHelper jh = null;
	String snippetVar_myProperty;
	String snippetVar_thisNavpoint;
%>
<!--START-->
<%@page import="com.dinaa.data.XNodes"%>
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.queno.productionHelpers.EmployeeListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeListProductionHelper h = (EmployeeListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employee");
%>

<table border=1>

	<tr>
		<th width="30">ID</th>
		<th width="250">Employee Name</th>
		<th width="50">Age</th>
	</tr>
	<% for (nodes.first(); nodes.next();) { %>
	<tr>
		<td><a href="%%employeePage%%?employeeId=<%=nodes.getText("id") %>"><%=nodes.getText("id") %></a></td>
		<td><%=nodes.getText("employeeName") %></td>
		<td><%=nodes.getText("age") %></td>
	</tr>
	
	<%} %>
	
</table>

<!--END-->
</body>
</html>
