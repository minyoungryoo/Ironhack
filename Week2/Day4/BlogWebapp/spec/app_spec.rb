require_relative("../app.rb")
require "rspec"
require "rack/test"

describe "server service" do
	include Rack::Test::Methods

	it "post method returns array" do
		get "/"
		expect(last_response).to be(true)
	end

	# it "should not load the home page" do
	# 	get "/home"
	# 	expect(last_response).to_not be_ok
	# end

	# it "should load the other page" do
	# 	get "/real_page"
	# 	expect(last_response).to be_ok
	# end

	# it "should redirect to the real_page" do
	# 	get "/hi"
	# 	expect(last_response.redirect?).to be(true)
	# 	follow_redirect!
	# 	expect(last_request.path).to eq("/real_page")
	# end


	def app
		Sinatra::Application
	end
end