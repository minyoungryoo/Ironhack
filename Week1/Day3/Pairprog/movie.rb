require("imdb")

movie_search = Imdb::Search.new("Captain America: Civil War")

#array that contains results
first_result = movie_search.movies[0]

puts "Got a total of #{movie_search.length} results"
puts "First result:"
puts first_result.title
puts first_result.rating
