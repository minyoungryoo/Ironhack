require "sinatra"
require_relative("lib/calculator.rb")
require_relative("lib/memory_saver.rb")


get "/calculator" do
	erb(:calculator)
end

  calc = Calculator.new
  result_store = MemorySave.new

post "/calculate" do
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f
  operation = params[:operation]

	if operation == "add"
		@result = calc.add(@first, @second)
		@symbol = "addition"
	elsif operation == "subtract"
		@result = calc.subtract(@first, @second)
		@symbol = "subtraction"
	elsif operation == "multiply"
		@result = calc.multiply(@first, @second)
		@symbol = "multiplication"
	else
		@result = calc.divide(@first, @second)
		@symbol = "division"
	end
		erb(:store) 
end

post "/result" do
# <input type = "hidden"
# name = "result" value = <%= @result %> >

	@stored_number = result_store.load
	erb(:calculator)
end


# post "/charge_money" do
#   # CHARGE THEM THAT MONEY

#   redirect to("/payment_success")
# end

# get "/add" do
#   erb(:add)
# end

# get "/subtract" do
# 	erb(:subtract)
# end

# get "/multiply" do
# 	erb(:multiply)
# end

# get "/divide" do
# 	erb(:divide)
# end

# get "/" do
# 	erb(:home_calculator)
# end