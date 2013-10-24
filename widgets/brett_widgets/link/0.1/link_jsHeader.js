
var Link = function() {
	return {
		myVariable: null,

		init: function() {
			alert("Link.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".Link .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("Link.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(Link.init()); // Run after page loads