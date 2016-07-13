class Authenticate
	def initialize(id, pw)
		@id = id
		@pw = pw
		@text = Text.new
	end

	def login
		puts "Please log in to this word processing program using your ID and password."
		puts "Username:"
		username = gets.chomp
		validateid(username)
	end

	def validateid(username)
		if username == @id
			puts "Password:"
			password = gets.chomp
			validatepw(password)
		else
			puts "invalid Username"
		end
	end

	def validatepw(password)
		if password == @pw
			# call text class
			@text.call_text
		else
			puts "Invalid credidentials. Try again"
		end
	end

end
