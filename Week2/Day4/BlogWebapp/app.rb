require "sinatra"
require "sinatra/reloader"

require_relative('lib/Post.rb')
require_relative('lib/Blog.rb')
require 'colorize'

seconds_in_day = 60*60*24

blog = Blog.new
blog.add_post Post.new("Blackholes",Time.now - 4 * seconds_in_day,"This is the first blog post","Sci-fi","Min")
blog.add_post Post.new("Umbrella",Time.now - 2 * seconds_in_day,"This is the third blog post","Romance","Max")
blog.add_post Post.new("Chicken",Time.now - 5 * seconds_in_day,"This is the second blog post","Comedy","Jack")
blog.add_post SponsoredPost.new("River",Time.now - 1 * seconds_in_day,"This is the zeroeth blog post","Sci-fi","Paul")
blog.add_post Post.new("Zombies",Time.now - 3 * seconds_in_day,"This is the fifth blog post","Sci-fi","Sidney")

# #@blog.publish_front_page


get "/posts" do
	@blog = blog
	erb(:posts)
end


get "/post_details/:index" do
	@blog = blog
	@index = params[:index].to_i
	erb(:content)
end


get "/new_post" do
  erb(:new_post)
end

get "/draft_post" do
	@draft_index = params[:draft_index]
	@blog_by_draft_index = blog.find_draft(@draft_index)
 	erb(:draft_post)
end

post "/form_submission" do
  @title = params[:title]
  @content = params[:content]
  @category = params[:category]
  @author = params[:author]
  blog.add_post Post.new(@title, Time.now, @content, @category, @author)
  redirect to("/posts")
end

get "/category/:category" do
	@category = params[:category]
	@blogs_by_category = blog.find_category(@category)
	erb(:category)
end

get "/author/:author" do
	@author = params[:author]
	@blogs_by_author = blog.find_author(@author)
	erb(:author)
end

post "/update_submission" do
	  @title = params[:title]
	  @content = params[:content]
	  @category = params[:category]
	  @author = params[:author]
	  @index = params[:index].to_i
	  blog.update_post(@index, Post.new(@title, Time.now, @content, @category, @author))
	  redirect to("/posts")
end

get "/search_result" do
	@search = params[:search]
	@result = blog.search_result(@search)
	erb(:search_result)
end




