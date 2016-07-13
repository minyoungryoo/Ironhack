
$(document).ready (function() {
	function doStuffOnClick () {
	alert("I told you not to click.");
	}

	$(".js-alert").on("click", doStuffOnClick);

	console.log($(".js-alert"))
	console.log($(".js-alert").length)

});



alert("app.js end");