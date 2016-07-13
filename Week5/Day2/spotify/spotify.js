$(document).ready (function() {
	function doStuffOnSubmit (response) {
		var artists_list = response.artists.items;
		artists_list.forEach(function(artist){
			$('.container').append("<h2> Name: " + artist.name + "</h2>");
			$('.container').append("<br>");
			if (artist.images.length >0){
			$('.container').append('<img src=' + artist.images[1].url + '>');
			}else{
				$('.container').append("<p>No Image Available</p>");
			}
			// $('.container').append("<img src=" + artist.images.url + ">");
		})
	}

	function fetchData(event){
		event.preventDefault();
		var artist_name = $('#search').val();
		$.ajax({
		  type: "GET",
		  url: "https://api.spotify.com/v1/search?type=artist&query=" + artist_name,
		  success: doStuffOnSubmit
		  // error: handleError
		})
	}

	$(".js-search-form").on("submit", fetchData);


});