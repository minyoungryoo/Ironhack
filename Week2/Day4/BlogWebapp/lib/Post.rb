require 'colorize'

class Post
	attr_accessor:title, :date, :text, :category, :author
	def initialize(title, date, text, category, author)
		@title = title
		@date = date
		@text = text
		@category = category
		@author = author
	end

	def print_post
			puts "#{@title}"
			puts "**************"
			puts "#{@text}"
			puts "----------------"
	end

	def title
		@title
	end

	def date
		@date
	end

	def text
		@text
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