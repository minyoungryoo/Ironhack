require "sinatra"
require "sinatra/reloader"
require_relative("lib/pwchecker.rb")

get "/" do
	erb(:log_in_page)
end

post "/my_page" do
	@email = params[:email]
	@password = params[:password]
	@pw_checker = PasswordChecker.new(@email, @password)
	if @pw_checker.password_length 
	erb(:login_successful)
	else
	erb(:log_in_page)
	end
end