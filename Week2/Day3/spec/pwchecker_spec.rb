require_relative("../lib/pwchecker.rb")

RSpec.describe PasswordChecker do
	it " password longer than 7 characters" do
			new_password = PasswordChecker.new("a@gmail.com","12345678")
		expect( new_password.password_length).to eq(true)

			new_password = PasswordChecker.new("a@gmail.com","1234")
		expect( new_password.password_length).to eq(false)

	end

	it "password contain at least 1 letter, 1 number and 1 symbol (e.g. #, %, etc)" do
		new_password = PasswordChecker.new("a@gmail.com","a1.")
		expect(new_password.password_contain).to eq(true)

		new_password = PasswordChecker.new("a@gmail.com","aaaaa!")
		expect(new_password.password_contain).to eq(false)

	end

	it "password contain 1 uppercase and 1 lowercase letter" do
		new_password = PasswordChecker.new("a@gmail.com","aaaLLLL")
		expect(new_password.password_uppercase).to eq(true)

		new_password = PasswordChecker.new("a@gmail.com","aaaaa")
		expect(new_password.password_uppercase).to eq(false)

	end

	it "The password must NOT contain neither the name nor the domain of the email" do
		new_password = PasswordChecker.new("a@gmail.com","LLLL")
		expect(new_password.password_nodomain).to eq(true)

		new_password = PasswordChecker.new("a@gmail.com","aaaaa")
		expect(new_password.password_nodomain).to eq(false)

	end


end
