$(document).ready (function() {

	function doStuffOnSubmit (response) {
		var artists_list = response.artists.items;
		artists_list.forEach(function(artist){
			$('.container').append("<h2> Name: " + artist.name + "</h2>");
			$('.container').append("<br>");
			if (artist.images.length >0){
			$('.container').append(`<img class="artist-image" data-id=${artist.id} src=${artist.images[1].url}>`);
			}else{
				$('.container').append("<p>No Image Available</p>");
			}

			$('.container').append(`<div><button type="button" data-id=${artist.id} class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			  ${artist.name}
			</button></div>`);

			$('.container').append(`<div data-id=${artist.id}></div>`);
				})

			
			$('.btn').click(function(event){
				var artistId = $(event.currentTarget).data("id");
				var divId = $('.container').data("id");
				// console.log("https://api.spotify.com/v1/artists/" + artistId + "/albums")
				$.ajax({
					type: "GET",
					url: "https://api.spotify.com/v1/artists/" + artistId + "/albums",
					success: function(response){
						createAlbum(response,artistId);
					}
				})

			})
	}


	function createAlbum(response, artistId){
		console.log(response);
			$(`.modal-body`).empty();
		response.items.forEach(function(album){
			$(`.modal-body`).append(`<h2>Title: ${album.name}</h2>`);
			if (album.images.length >0){
			$(`.modal-body`).append(`<img src=${album.images[1].url}>`);
			}else{
				$(`.modal-body`).append(`<p>No Images Available</p>`);
			}

			$(`.modal-body`).append(`<div><button type="button" data-id=${album.id} class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			  ${album.name}
			</button></div>`);

		})


			$('.btn').click(function(event){
			// $('#myModal').modal("show");
				var albumId = $(event.currentTarget).data("id");
				// var divId = $('.container').data("id");
				console.log(albumId);
				$.ajax({
					type: "GET",
					url: "https://api.spotify.com/v1/albums/"+albumId+"/tracks",
					success: function(response){
						createTrack(response,albumId);
					}
				})

			})
	}

	function createTrack(response, albumId){
			$('#myModal').modal('hide');
		console.log(response);
			$(`.modal-body`).empty();
		response.items.forEach(function(track){
			$(`.modal-body`).append(`<h2>Title: ${track.name}</h2>`);
			$('#myModal').modal('show');
			// console.log(track.preview_url);
			$(`.modal-body`).append(`<audio src="${track.preview_url}" controls></audio>`);
			

			// if (track.images.length >0){
			// $(`.modal-body`).append(`<img src=${track.images[1].url}>`);
			// }else{
			// 	$(`.modal-body`).append(`<p>No Images Available</p>`);
			// }

			// $(`.modal-body`).append(`<div><button type="button" data-id=${track.id} class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
			//   ${track.name}
			// </button></div>`);

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

	function handleError(error){
		console.log("There is an error!");
		console.log(error.responseText);
	}

	// function showAlbums

	$(".js-search-form").on("submit", fetchData);
// 	// $(".classname").on("click", showAlbums);
// $(".classname").onclick = alert("It worked!");


	// function showList(event){
	// 	event.preventDefault();
	// 	var artist_name = $('#search').val();
	// 	$.ajax({
	// 	  type: "Post",
	// 	  // data: newArtist,
	// 	  url: "https://api.spotify.com/v1/search?type=artist&query=" + artist_name,
	// 	  success: showExistingList
	// 	  error: handleError
	// 	})
	// }

	// function showExistingList(response){

	// }

});






