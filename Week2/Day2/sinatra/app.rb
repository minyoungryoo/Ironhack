require "sinatra"

get "/" do
	erb(:home)
end

# get "/hi" do
# 	"Hello, world!"
# end

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
		erb(:user_profile)
	end
end

