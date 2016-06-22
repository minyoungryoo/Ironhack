class PasswordChecker
	def initialize(email, password)
		@email = email
		@password = password
	end
	
	def check_password
		if password_length == true && password_contain == true && password_uppercase == true && password_nodomain == true
			true
		else
			false
		end
	end

	def password_length
		if @password.length > 7
			true
		else
			false
		end
	end

	def password_contain
		 newarray = @password.split("")
		 # .map {|x| x.scan(/\d/)}
		if newarray.any? {|letter| /\d/ === letter} && newarray.any? {|letter| /[a-zA-Z]+/ === letter} && newarray.any? {|letter| /\W/ === letter }
			true
		else
			false
		end

	end

	def password_uppercase
		if @password.split("").any?{|letter| /[a-z]+/ === letter} && @password.split("").any?{|letter| /[A-Z]+/ === letter} 
			true
		else
			false
		end
	end

	def password_nodomain
		splitarray = @email.split("@")
		word = splitarray[0]
		word2 = splitarray[1].split(".")[0]

		if @password.include?(word) || @password.include?(word2)
			false
		else 
			true
		end
	end
end











