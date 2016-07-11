class UserController < ApplicationController
	def new
		@the_user = User.new
		render 'new'
	end

	def index
		@users_arr = User.order(created_at: "desc")
		render 'index'
	end

	def create
		@the_user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email],
			:password => params[:user][:password]
			)
		@the_user.save

		# render 'login'
		redirect_to "/users/login"
		# redirect_to "/users/#{@the_user.id}"
	end

	def login
		# @the_user = User.new
		render 'login'
	end

	def login_verify
		# @user_email = params[:email]
		# @user_pw = params[:password]

		@the_user = User.find_by(email: params[:email])
		@exist_user = @the_user.authenticate(params[:password])

		redirect_to "/users/#{@exist_user.id}"
	end

	def show
		@the_user = User.find(params[:user_id])
		@my_products_arr = @the_user.products
		render 'show'
	end

	def my_page
		@the_product = Product.find(params[:product_id])
		@bids = @the_product.bids
		@users = User.order(created_at: "desc")
		# @owner = User.find(params[:user_id])
		# @the_product = @owner.products

		# if @the_product.deadline > Time.now

		# bids_amt = @bids.map do |bid|
		# 	bid.amount
		# end
		# winning_bid_user_id = @bids.find_by(amount: bids_amt.max).user_id
		# @winning_bidder = @users.find(winning_bid_user_id).name

		render 'my_page'
	end

	def destroy
		
	end
end
