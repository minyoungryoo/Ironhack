
var fs = require('fs');
var Call = require("./lib/call.js");

function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var unsorted_episodes = JSON.parse(file);
    var unfiltered_but_sorted_episodes = unsorted_episodes.sort(function(a,b){
    	return a.episode_number-b.episode_number;
    });

 //    var episodes = unfiltered_but_sorted_episodes.filter(ratingBar);

 //    function ratingBar(episode) {
	//   return episode.rating >= 8.5;
	// }


	var episodes = unfiltered_but_sorted_episodes.filter(function(theEpisode){
		return theEpisode.rating >= 8.5;
	});

    episodes.forEach(function(theEpisode){
    	console.log("Title:" + theEpisode.title);
		console.log(theEpisode.description);
		var score = Math.floor(theEpisode.rating);
		var stars = "";
		for(var i=0; i<score; i++){
			stars += "*";
		}
		console.log("Rating:" + theEpisode.rating + " "+stars);
    });
}
fs.readFile("./GoT.txt", 'utf8', fileActions);