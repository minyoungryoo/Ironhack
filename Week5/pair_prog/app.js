$(document).ready (function() {
	function fadeOutFunc () {
	// alert("I told you not to click.");
	$("body > *").not("body > .js-alert").fadeToggle();
	}

	function unicornFunc() {
  setTimeout(function() { 
  		var color = ["red","orange","yellow"];
				for(var i=0; i<3; i++){
				$('body')[0].style.backgroundColor = color[i];
				}
  }, 1);
}

// .js-unicorn-mode { background-color: #336699; }
$(".js-unicorn-mode").click(function () {
   $(this).toggleClass("green");
});

// function

	// function unicornFunc(timeout){
			
	// 			var color = ["red","orange","yello"];
	// 			for(var i=0; i<3; i++){
	// 			document.getElementsByTagName("BODY")[0].style.backgroundColor = color[i];
	// 			}
	// }

	$(".js-alert").on("click", fadeOutFunc);

	$(".js-unicorn-mode").click(unicornFunc);

		$(".js-unicorn-mode").click(function(){

			$("body > *").not("body > .js-unicorn-mode").toggle();
		});





		// $(".js-unicorn-mode").on("click", function() {
		// 	$('.js-unicorn-mode').toggle();
		// });

	// console.log($(".js-alert"))
	// console.log($(".js-alert").length)

});



alert("app.js end");