class ProductController < ApplicationController

	def index
		@products_arr = Product.order(created_at: "desc")
		render 'index'
	end

	def show
		@the_product = Product.find(params[:id])
		@bids = @the_product.bids
		@users = User.order(created_at: "desc")

		if @the_product.deadline > Time.now
			@can_bid = true
		else
			@can_bid = false
		end

			bids_amt = @bids.map do |bid|
				bid.amount
			end
			
		if @bids.find_by(amount: bids_amt.max) != nil
			winning_bid_user_id = @bids.find_by(amount: bids_amt.max).user_id
			@winning_bidder = @users.find(winning_bid_user_id).name
		end

		render 'show'
	end

	def new
		@the_product = Product.new
		render 'new'
	end

	def create
		@the_product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline],
			:min_bid => params[:product][:min_bid],
			:user_id => params[:user_id])
		if @the_product.save

		redirect_to "/users/#{@the_product.user_id}/products/#{@the_product.id}"
		end
	end

	def destroy
		
	end
end








