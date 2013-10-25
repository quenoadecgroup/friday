
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
<%@page import="tooltwist.queno.productionHelpers.EmployeeMaintenanceProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeMaintenanceProductionHelper h = (EmployeeMaintenanceProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employee");
	nodes.next();
%>
<form method="post" action="">
<input type="hidden" name="op"  value="queno_widgets.employeeMaintenance.maintainEmployee"/>
<table>

	<tr>
		<td>ID:</td>
		<td><input type="text" id="employeeId" name="employeeId" value="<%=nodes.getText("id") %>"></td>
	</tr>
	
	<tr>
		<td>Employee Name:</td>
		<td><input type="text" id="employeeName" name="employeeName" value="<%=nodes.getText("employeeName") %>"></td>
	</tr>
	
	<tr>
		<td>Age:</td>
		<td><input type="text" id="employeeAge" name="employeeAge" value="<%=nodes.getText("age") %>"></td>
	</tr>
	
	<tr>
		<td><input type="button" id="button-save" value="save" /></td>
	</tr>
	
	<tr>
		<td><a href="%%employeeList%%">back to list</a></td>
	</tr>

</table>
</form>

<!--END-->
</body>
</html>
