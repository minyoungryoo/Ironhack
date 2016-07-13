$(document).ready (function() {
	function doStuffOnSubmit () {
		event.preventDefault();
	alert("Form submitted!");
	}

	$(".js-character-form").on("form", doStuffOnSubmit);


});