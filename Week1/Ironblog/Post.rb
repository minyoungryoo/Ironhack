require 'colorize'

class Post
	attr_accessor:title, :date, :text, :sponsor
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end

	def print_post
			puts "#{@title}"
			puts "**************"
			puts "#{@text}"
			puts "----------------"
	end

end

class SponsoredPost < Post
	def print_post
			puts "******#{@title}******"
			puts "**************"
			puts "#{@text}"
			puts "----------------"
	end
end 