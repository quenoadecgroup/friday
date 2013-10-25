
var EmployeeMaintenance = function() {
	return {
		myVariable: null,

		init: function() {
			
			
			//click event
			$("#button-save").click(function() {
				var id = $("#employeeId").val();
				var name = $("#employeeName").val();
				var age = $("#employeeAge").val();
				
				$.ajax({
					data: {
						employeeId: id,
						employeeName: name,
						employeeAge: age,
						op: "queno_widgets.employeeMaintenance.maintainEmployee"
					},
					success: function(data) {
						alert(data);
						if (data == "update") {
							alert("Employee data succcessfully updated");
						}
						else {
							alert("Employee data succesfully added");
						}
					}
				});
			});
			
		},
		
		myMethod: function() {
			alert("EmployeeMaintenance.myMethod()");
		}
		// no comma after last method
	};
}();

jQuery(EmployeeMaintenance.init()); // Run after page loads