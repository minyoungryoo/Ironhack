require_relative("../lib/stringcalc.rb")

RSpec.describe StringCalculator do
	let (:the_calculator) do
		StringCalculator.new
	end

	it "returns 0 for empty string" do
		# the_calculator = StringCalculator.new
		# p the_calculator.add("") == 0
		expect(the_calculator.add("") ).to eq(0)
	end

	it "returns the number for a single number" do
		# p the_calculator.add("6") == 6
		# p the_calculator.add("5") == 5
		# the_calculator = StringCalculator.new
		expect(the_calculator.add("6") ).to eq(6)
		expect(the_calculator.add("5") ).to eq(5)

	end

	it "returns the numbers added up for two numbers" do
		# p the_calculator.add("5,7") == 12
		# p the_calculator.add("4,3") == 7
		# the_calculator = StringCalculator.new
		expect(the_calculator.add("5, 7") ).to eq(12)
		expect(the_calculator.add("4, 3") ).to eq(7)
	end
end



# p the_calculator.add("5, 7") == 12
# p the_calculator.add("4, 3") == 7


# p the_calculator.add("5,7,10") == 22
# p the_calculator.add("4,3, 20") == 27

# p the_calculator.add("5-7") == 12
# p the_calculator.add("4-3") == 7

# p the_calculator.add("5-7,10") == 22
# p the_calculator.add("4,3-20") == 27