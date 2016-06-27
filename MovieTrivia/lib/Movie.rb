require "imdb"

class Movie
	def initialize(word)
		@list_movies = Imdb::Search.new(word).movies
	end

	def list_movies
		search_first_nine(movies_with_posters)
	end

	def search_director
		new_list = movies_with_posters.select {|p| p.director[0] != nil }.to_a
		search_first_nine(new_list)
	end

	def search_rating
		new_list = movies_with_posters.select {|p| p.rating != nil and p.rating > 0}.to_a
		search_first_nine(new_list)		
	end

	def movies_with_posters
		@list_movies.take(20).select{|p| p.poster != nil }.to_a
	end

	def search_first_nine(list)
		list.take(9)
	end

	def type_correct?(answer, year)
		ans = movies_with_posters.find_all { |movie| movie.year.to_s == year }
		ans.any? {|correct_movie|
			correct_movie.title.downcase.match(answer) != nil
		}
	end

end
