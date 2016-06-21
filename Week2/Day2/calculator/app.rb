require "sinatra"
require_relative("lib/calculator.rb")

get "/add" do
  erb(:add)
end

get "/subtract" do
	erb(:subtract)
end

get "/multiply" do
	erb(:multiply)
end

get "/divide" do
	erb(:divide)
end


post "/calculate" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  operation = params[:operation]

  calc = Calculator.new
	if operation == "add"
		result = calc.add(first, second)
		symbol = "+"
	elsif operation == "subtract"
		result = calc.subtract(first, second)
		symbol = "-"
	elsif operation == "multiply"
		result = calc.multiply(first, second)
		symbol = "*"
	else
		result = calc.divide(first, second)
		symbol = "/"
	end
		
		"#{first} #{symbol} #{second} = #{result}"	
end



# post "/charge_money" do
#   # CHARGE THEM THAT MONEY

#   redirect to("/payment_success")
# end

get "/" do
	erb(:home_calculator)
end