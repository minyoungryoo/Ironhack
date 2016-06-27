require "imdb"
require "sinatra"
require "sinatra/reloader"

require_relative('lib/Movie.rb')
enable(:sessions)


get '/movies_home' do
	session[:score] = 0
	erb(:movie_home_page)
end

post '/trivia_type' do
	@key_word = params[:key_word]
	session[:key_word] = @key_word
	erb(:trivia_type)
end

get '/movies_year' do
	@movie_search = Movie.new(session[:key_word])
	@result = @movie_search.list_movies
	@rand_year = @result.sample.year
	erb(:movie_question)
end

# puts movie_search.correct?("sunny in philadelphia", "2005") ==true

post '/question' do
	# @written_answer = params[:written_answer]
	@rand_year = params[:rand_year]
	@movie_year = params[:movie_year]
	if @movie_year == @rand_year
		session[:score] += 1
		@score = session[:score]
		erb(:correct)
	else
		@score = session[:score]
		erb(:incorrect)
	end
end


get '/director' do
	@movie_search = Movie.new(session[:key_word])
	@result = @movie_search.search_director
	@rand_movie = @result.sample
	@rand_director = @rand_movie.director[0]
	erb(:movie_question_director)
end

post '/question_director' do
	@rand_director = params[:rand_director]
	@movie_director = params[:movie_director]
	if @rand_director == @movie_director
		session[:score] += 1
		@score = session[:score]
		erb(:correct)
	else
		@score = session[:score]
		erb(:incorrect)
	end
end

get '/rating' do
	@movie_search = Movie.new(session[:key_word])
	@result = @movie_search.search_rating
	@rand_movie = @result.sample
	@rand_rating = @rand_movie.rating
	erb(:movie_question_rating)
end

post '/question_rating' do
	@rand_rating = params[:rand_rating]
	@movie_rating = params[:movie_rating]
	if @rand_rating == @movie_rating
		session[:score] += 1
		@score = session[:score]
		erb(:correct)
	else
		@score = session[:score]
		erb(:incorrect)
	end
end


post '/advanced_question' do
	erb(:advanced_question)
end


# movie_search.type_correct?(@answer, "2005")


    # movie_search = Imdb::Search.new('word') 

    # it 'remembers the query' do
    #   expect(subject.query).to eq('Star Trek: TOS')
    # end

    # it 'finds 14 results' do
    #   expect(subject.movies.size).to eq(14)
    # end



# movie_search = Imdb::Search.new("Captain America: Civil War")
# first_result = movie_search.movies[0]




