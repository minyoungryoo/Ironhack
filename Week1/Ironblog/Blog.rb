require 'colorize'

class Blog
	attr_accessor :posts
	def initialize
		@posts = []
		@blogpost = []
		@num1 = 0
		@num2 = 0
	end

	def publish_front_page
		@blogpost = @posts.sort do |post1, post2|
			date2 = post2.date.split("/")[2]
			date1 = post1.date.split("/")[2]
			date2 <=> date1
			# post2.date <=> post1.date
		end
		user_input
	end

		def displayPost(blogposts)
		blogposts.each do |post|
			post.print_post
			end
		end

		def pageSetup
			@num2 = @num1 + 2
			# if @num2 > @blogpost.length
			# 	@num2 = (@num1-1)+(@blogpost.length - @num1)
			# end
			displayPost(@blogpost[@num1..@num2])

			page = []
			for i in 1..(@blogpost.length.to_f/3).ceil
			page = page.push(i)
			end

			# (@num2+1)/3
			string=" "
			for i in 0..page.length
				if i == (@num2+1)/3 - 1
					string += "#{page[i]}\t".red
				else
				string +="#{page[i]}\t"
				end
			end
			puts string
		end

		
		def user_input
		 input = " "
			while input != "exit"
			pageSetup
			puts "next or prev? (type \"exit\" when done looking at blogs)"
			input = gets.chomp.downcase
				if input == "next"
					@num1 += 3
				elsif input == "prev"
					@num1 -= 3
				else
					puts "invalid input"
				end
			end
		end

	def add_post(post)
		@posts.push(post)
	end

end

