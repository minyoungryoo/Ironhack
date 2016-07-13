class Text
	def call_text
		puts "Enter some text for us to process!"
		text = gets.chomp
		count_words(text)
	end

	def count_words(text)
		arr = text.split(" ")
		length = arr.length
		puts "Your text has #{length} words in it."
	end
end