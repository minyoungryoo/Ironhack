class Bid < ApplicationRecord
	attr_accessor :email
	belongs_to :product

	validate :price_range, :user_product

	def price_range

		if Bid.order(amount: "desc")[0] != nil
		highest_bid = Bid.order(amount: "desc")[0].amount
		else
			highest_bid = 0
		end

		if amount < product.min_bid
			errors.add(:amount, "can't bid less than minimum amount set by user")
		elsif amount < highest_bid
			errors.add(:amount, "can't bid less than the previous highest bid")
		end
		#prev highest bid 
	end

	def user_product
		if user_id == product.user_id
		errors.add(:email, "can't bid on your own product")
		end
	end

end




		# if amount.to_i < product.min_bid
		# 	errors.add(:min_bid, "can't bid less than the minimum amount specified by user")
		# elsif @amt_bid.to_i < highest_bid
		# 	errors.add(:email, "can't bid less than the previous highest bid")
		# elsif User.find_by(email: params[:bid][:email]).id == @the_product.user_id
		# 	errors.add("can't bid on your own product")
		# else


		# if @the_product.bids.length == 0
		# 	highest_bid = 0
		# else
		# 	highest_bid = @the_product.bids.order(amount: "desc")[0].amount
		# end




