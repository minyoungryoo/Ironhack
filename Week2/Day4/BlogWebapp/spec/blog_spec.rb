require_relative("../Blog.rb")
require_relative("../Post.rb")


RSpec.describe PasswordChecker do
	it " post method returns array" do
		blog = Blog.new
		blog.add_post Post.new("Title1",Time.now - 4 * seconds_in_day,"This is the first blog post")
		expect(blog.blogpost).to be_kind_of(Array)

	end

end