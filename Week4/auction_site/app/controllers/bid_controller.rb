class BidController < ApplicationController
	def create
		@the_product = Product.find(params[:product_id])
		# @product_id = params[:product_id]
		@amt_bid = params[:bid][:amount]
		
		@my_bid = Bid.new(
			:amount => @amt_bid,
			:user_id => User.find_by(email: params[:bid][:email]).id,
			:product_id => @the_product.id
		)

		if @my_bid.save
			redirect_to "/users/#{@my_bid.user_id}/products/#{@the_product.id}/bid/#{@my_bid.id}"
		else
			render 'new'
		end
	end

	def new
		@the_product = Product.find(params[:product_id])
		@my_bid = @the_product.bids.new

		render 'new'
	end
end




