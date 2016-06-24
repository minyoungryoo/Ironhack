require 'colorize'

class Blog
	attr_accessor :posts
	def initialize
		@posts = []
		@num1 = 0
		@num2 = 0
	end

	def add_post(post)
		@posts.push(post)
	end

	def latest_posts
		@posts.sort do |post1, post2|
			post2.date <=> post1.date
		end
	end

	def displayPost(blogposts)
	blogposts.each do |post|
		post.print_post
		end
	end

	def pageSetup
		@num2 = @num1 + 2
		displayPost(@blogpost[@num1..@num2])

		page = []
		for i in 1..(@blogpost.length.to_f/3).ceil
		page = page.push(i)
		end

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

	def publish_front_page
		latest_posts
		user_input
	end

	def find_category(category)
		@posts.find_all {
			|post| post.category.downcase === category.downcase
		}
	end

	def find_author(author)
		@posts.find_all {
			|post| post.author.downcase === author.downcase
		}
	end

	def find_draft(draft_index)
		@posts[draft_index.to_i]
	end

	def update_post(index, post)
		@posts.map! { |x| x == @posts[index] ? post : x }
	end

	def search_result(search)
		@posts.find_all {
			|post| post.category.downcase === search.downcase or
			post.author.downcase === search.downcase or
			post.title.downcase === search.downcase
		}
	end

end







