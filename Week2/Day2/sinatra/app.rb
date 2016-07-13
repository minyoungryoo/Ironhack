require "sinatra"
require "sinatra/reloader"
require "pry"

enable(:sessions)

get "/" do
	@current_session = session
	erb(:home)

end

get "/session_test" do
	@current_session = session
	erb(:display_the_session)
end

get "/session_add/:value" do
	new_value = params[:value]
	session[:new_session_values] = new_value

	redirect to("/session_test")
end 

# get do

# end


get "/party" do
	status(404)
	erb(:party)
end

get "/about" do
	erb(:about)
end


get "/hi" do
	@name = "Min"
	erb(:hipage)
	end

get "/recipe" do
	@name = "Red Velvet Cake"
	@ingredients = [
		"eggs",
		"flour",
		"red food coloring",
		"cocoa",
		"buttermilk",
		"sugar",
		"cream cheese"
	]
	erb(:recipe_page)
end

users = {
	"khalifenizar" => {:name => "Nizar Khalife", :email => "naaazz@ironhack.com"},
	"ag" => {:name => "Alida Gagliuffi", :email => "agagag@ironhack.com"},
	"alia" => {:name => "Ali Poonawala", :email => "aaaaa@ironhack.com"}
}

get "/users/:username" do
	@name = params[:username]

	if @name == "min"
		erb(:whiskey)
	else
		@info = users[@name]

		 # binding.pry

		erb(:user_profile)
	end
end

