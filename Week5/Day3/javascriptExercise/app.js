$(document).ready(function (){
	console.log("The document is ready");

	if ("geolocation" in navigator){
		console.log("Browser has geolocation");
		// var options = {timeout: 1000};
		navigator.geolocation.getCurrentPosition(showPosition, handleError);
	}else{
		console.log("Browser doesn't have geolocation");
		var html = '<h2> update your browser </h2>';
		$('body').append(html);
	}


	// function fetchData(event){
	// event.preventDefault();
	// var artist_name = $('#search').val();
	// $.ajax({
	//   type: "GET",
	//   url: "https://api.spotify.com/v1/search?type=artist&query=" + artist_name,
	//   success: doStuffOnSubmit
	//   error: handleError
	// })
	// }

});

function showPosition(position){
	console.log("User consented to give location.");
	console.log(position);

	var lat = position.coords.latitude;
	var lng = position.coords.longitude;

	var html = `
	<h2> Your position </h2>
	<ul>
		<li> latitude: ${lat} </li>
		<li> longitude: ${lng} </li>
	</ul>
	`;

	$("body").append(html);

	$('body').append(`<img src="https://maps.googleapis.com/maps/api/staticmap?center=${lat},${lng}&size=640x400&zoom=9">`);

}

function handleError(error){
	console.log("you have an error");
	console.log(error);

	if(error.code === 1){
		var html = '<h2>Please provide your location</h2>';
		$('body').append(html);
	}
}