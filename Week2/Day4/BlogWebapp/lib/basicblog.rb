require_relative("Post.rb")
require_relative("Blog.rb")
require 'colorize'

seconds_in_day = 60*60*24

#Time.now - 4 * seconds_in_day


blog = Blog.new
blog.add_post Post.new("Title1","2/2/14","This is the first blog post")
blog.add_post Post.new("Title2","1/1/16","This is the third blog post")
blog.add_post Post.new("Title3","2/20/15","This is the second blog post")
blog.add_post SponsoredPost.new("Title4","2/20/13","This is the zeroeth blog post")
blog.add_post Post.new("Title5","2/20/17","This is the fifth blog post")


 blog.publish_front_page