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
			:email => params[:user][:email]
			)
		@the_user.save
		redirect_to "/users/#{@the_user.id}"
	end

	def show
		@the_user = User.find(params[:user_id])
		render 'show'
	end

	def destroy
		
	end
end
